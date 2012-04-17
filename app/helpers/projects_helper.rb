module ProjectsHelper
	def join_tags(post)
		post.tags.map { |t| t.name }.join(", ")
	end
end
