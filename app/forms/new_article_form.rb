class NewArticlesForm
    include ActiveModel::Model


    attr_accessor(
        :title,
        :text
    )

    validates :title, presence: true
    validates :text, presence: true
end