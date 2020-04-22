class NewArticleForm
  include ActiveModel::Model

  attr_accessor(
    :title,
    :text
  )

  validates (
    :title,
    :text,
    presence: true
  )

end
