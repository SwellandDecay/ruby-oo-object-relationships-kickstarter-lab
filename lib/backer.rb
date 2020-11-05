class Backer

    attr_reader :name

    def initialize(name=nil, project=nil)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.select{|project_backer| project_backer.backer == self}.map{|project_backer| project_backer.project}
    end

end