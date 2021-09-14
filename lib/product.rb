class Product
  attr_reader :name, :category, :tags

  def initialize(name, category, tags = [])
    @name = name
    @category = category
    @tags = tags
  end

  def as_html_row
    <<~EOF
      <tr>
        <th>#{name}</th>
        <td>#{category.to_s}</td>
        <td>
          <ul>
            #{tags.map { |tag| "<li>#{tag}</li>"}.join('') }
          </ul>
        </td>
      </tr>
    EOF
  end
end
