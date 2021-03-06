class JenkinsJsonPayload < Payload
  def building?
    status_content.first['build']['phase'] == 'STARTED'
  end

  def convert_content!(content)
    [JSON.parse(content)]
  rescue => e
    self.processable = self.build_processable = false
    raise Payload::InvalidContentException, e.message
  end

  def content_ready?(content)
    content["build"]["phase"] != "STARTED"
  end

  def parse_success(content)
    content["build"]["status"] == "SUCCESS"
  end

  def parse_url(content)
    job_path = content['build']['full_url']

    if job_path
      self.parsed_url = "#{job_path}lastBuild"
    else
      job_path = content['build']['url'].split('/')
      job_path = "#{job_path[0]}/#{job_path[1]}"
      self.parsed_url = "http://#{remote_addr}:8080/#{job_path}/lastBuild"
      job_path ="http://#{remote_addr}:8080/#{content['build']['url']}"
    end

    job_path
  end

  def parse_build_id(content)
    content['build']['number']
  end

  def parse_published_at(content)
    Time.now
  end
end
