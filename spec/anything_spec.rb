require 'spec_hepler'
require 'pry'

require 'product.rb'

describe Product do
  let(:tomato) do
    Product.new(
      'Tomato',
      :fruit,
      ['red', 'salad', 'sour']
    )
  end

  let(:expected_result) do
    <<~EOF
      <tr>
        <th>Tomato</th>
        <td>fruit</td>
        <td>
          <ul>
            <li>red</li><li>salad</li><li>sour</li>
          </ul>
        </td>
      </tr>
    EOF
  end

  it 'can be printed as HTML table row' do
    expect(tomato.as_html_row).to eq(expected_result)
  end
end
