class Webmotors::MakeDataLoad

  def exec
    MakeWorker.perform_async()
  end

end
