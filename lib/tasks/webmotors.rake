namespace :webmotors do

  desc "Start to load data in the app"

  task loadMake: :environment do
     Webmotors::MakeDataLoad.new().exec()
  end

  task loadModel: :environment do
      Webmotors::ModelDataLoad.new().exec()
  end

end
