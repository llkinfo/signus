require 'spec_helper'

describe "bairros/show.html.haml" do
  before(:each) do
    @bairro = assign(:bairro, stub_model(Bairro,
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
  end
end
