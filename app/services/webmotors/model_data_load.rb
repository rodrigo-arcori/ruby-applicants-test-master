class Webmotors::ModelDataLoad

  def exec

    if Make.all.size > 0 && Model.all.size == 0

      puts "Loading Models"

      Make.all.each do |mk|

        #search the models
        uri = URI(ENV['MODEL_URI'])

        # Make request for Webmotors site
        make = Make.where(webmotors_id: mk.id)[0]

        if make
          response = Net::HTTP.post_form(uri, { marca: make.id })
          models_json = JSON.parse response.body

          # debugger

          # Itera no resultado e grava os modelos que ainda não estão persistidas
          models_json.each do |json|
            if Model.where(name: json["Nome"], make_id: make.id).size == 0
              Model.create(make_id: make.id, name: json["Nome"])
            end
          end

        end

      end

    end

  end

end
