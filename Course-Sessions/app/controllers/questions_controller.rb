class QuestionsController < ApplicationController

 	def index
 		current_user_id = current_user.id
 		if params[:step].present? && [3,4,5].include?(params[:step].to_i) 			 			
 			@answers = Answer.joins("INNER JOIN algorithms on algorithms.id = answers.question_id").where("answers.user_id = #{current_user_id}").select("algorithms.trait,avg(answers.answer) AS answer_avg").order("avg(answers.answer)").group("algorithms.trait").limit(3)
 			if [3,4].include?(params[:step].to_i)
 				if @answers.present?
 					@questions = Algorithm.select("id,trait,concat(id,'_',question) AS question").where("id NOT IN (?) AND trait = ?",Answer.select("question_id").where("user_id = #{current_user_id}").map(&:question_id),@answers.first.trait).order("RAND()").limit(2)
 					traits = @answers.map(&:trait)
 					traits.delete_at(0)

 					@questions += Algorithm.select("id,trait,(SELECT concat(id,'_',question) FROM algorithms WHERE trait = algorithms.trait GROUP BY id ORDER BY RAND() LIMIT 1 ) AS question").where("id NOT IN (?) AND trait IN (?)",Answer.select("question_id").where("user_id = #{current_user_id}").map(&:question_id),traits).group("trait")
 				end
 			else
 				# render :text => @answers.first.attributes.inspect and return false
 				redirect_to question_path(1,:trait => @answers.first.trait) 			 			
 			end 			 			
 		elsif params[:step].present? && params[:step].to_i == 2
 			@questions = Algorithm.select("trait, (SELECT concat(id,'_',question) FROM algorithms WHERE trait = algorithms.trait GROUP BY id ORDER BY RAND( ) LIMIT 1) AS question").where("id NOT IN (?)",Answer.select("question_id").where("user_id = #{current_user_id}").map(&:question_id)).group("trait")
 		else
	 		params[:step] ||= 1
			@questions = Algorithm.select("trait, (SELECT concat(id,'_',question) FROM algorithms WHERE trait = algorithms.trait GROUP BY id ORDER BY RAND( ) LIMIT 1) AS question").group("trait")
		end
 	end

 	def create
 		if params[:answer].present?
 			if params[:answer].length == 6 && [1,2].include?(params[:step].to_i)
	 			params[:answer].each do |key,value|
	 				@answer = Answer.create(:answer=>value ,:question_id=>key ,:user_id=>current_user.id)
	 			end
	 			redirect_to questions_path( :step => params[:step].to_i+1 ) 
	 		elsif params[:answer].length == 4 && [3,4].include?(params[:step].to_i) 
	 			params[:answer].each do |key,value|
	 				@answer = Answer.create(:answer=>value ,:question_id=>key ,:user_id=>current_user.id)
	 			end
	 			redirect_to questions_path( :step => params[:step].to_i+1 )
	 		else
	 			redirect_to questions_path
	 		end
 		else
	 		redirect_to questions_path
 		end
 	end

 	def show
 		render :text => "You are #{Algorithm::PERSONALITY_TYPE[params[:trait].to_i]}".inspect and return false
 	end

end
