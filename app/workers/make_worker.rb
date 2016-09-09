class MakeWorker

  include Sidekiq::Worker

  def perform()

    puts "***** MakeWorker ******"

    #search the make
    uri = URI(ENV['MAKE_URI'])

    # Make request for Webmotors site
    response = Net::HTTP.post_form(uri, {})
    json = JSON.parse response.body

    debugger

    # Itera no resultado e grava as marcas que ainda não estão persistidas
    json.each do |make_params|

      if Make.where(name: make_params["Nome"]).size == 0
        Make.create(name: make_params["Nome"], webmotors_id: make_params["Id"])
      end

    end

  end

end
