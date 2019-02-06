Rails.application.config.content_security_policy do |policy|
  policy.default_src :self, :https
  policy.font_src    :self, :https, :data
  policy.img_src     :self, :https, :data
  policy.object_src  :none
  # 条件分岐を追加. すでにpolicy.script_srcは書いてある
  if Rails.env.development?
    policy.script_src :self, :https, :unsafe_eval
  else
    policy.script_src :self, :https
  end
  policy.style_src   :self, :https
end
