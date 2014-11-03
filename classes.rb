# Classes to convert to yaml

class Deploy
  attr_accessor :name, :parameters, :classes

  def initialize(name, parameters, classes)
    self.name = name
    self.parameters = parameters
    self.classes = classes
  end
end

class Params
  attr_accessor :app_folder, :app_id, :tar_file, :profile_id, :version_id

  def initialize(app_folder, app_id, tar_file, profile_id, version_id)
    self.app_folder = app_folder
    self.app_id = app_id
    self.tar_file = tar_file
    self.profile_id = profile_id
    self.version_id = version_id
  end

end
