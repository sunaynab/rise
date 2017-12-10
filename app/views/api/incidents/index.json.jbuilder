@incidents.each do |incident|
  json.set! incident.id do
    json.partial! "api/incidents/incident", incident: incident
  end
end