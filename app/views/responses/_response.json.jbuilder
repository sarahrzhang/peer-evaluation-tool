json.extract! response, :id, :leadership_score, :communication_score, :contribution_score, :quality_score, :skills_score, :comment, :created_at, :updated_at
json.url response_url(response, format: :json)
