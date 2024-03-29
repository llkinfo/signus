require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe MunicipiosController do

  # This should return the minimal set of attributes required to create a valid
  # Municipio. As you add validations to Municipio, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all municipios as @municipios" do
      municipio = Municipio.create! valid_attributes
      get :index
      assigns(:municipios).should eq([municipio])
    end
  end

  describe "GET show" do
    it "assigns the requested municipio as @municipio" do
      municipio = Municipio.create! valid_attributes
      get :show, :id => municipio.id
      assigns(:municipio).should eq(municipio)
    end
  end

  describe "GET new" do
    it "assigns a new municipio as @municipio" do
      get :new
      assigns(:municipio).should be_a_new(Municipio)
    end
  end

  describe "GET edit" do
    it "assigns the requested municipio as @municipio" do
      municipio = Municipio.create! valid_attributes
      get :edit, :id => municipio.id
      assigns(:municipio).should eq(municipio)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Municipio" do
        expect {
          post :create, :municipio => valid_attributes
        }.to change(Municipio, :count).by(1)
      end

      it "assigns a newly created municipio as @municipio" do
        post :create, :municipio => valid_attributes
        assigns(:municipio).should be_a(Municipio)
        assigns(:municipio).should be_persisted
      end

      it "redirects to the created municipio" do
        post :create, :municipio => valid_attributes
        response.should redirect_to(Municipio.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved municipio as @municipio" do
        # Trigger the behavior that occurs when invalid params are submitted
        Municipio.any_instance.stub(:save).and_return(false)
        post :create, :municipio => {}
        assigns(:municipio).should be_a_new(Municipio)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Municipio.any_instance.stub(:save).and_return(false)
        post :create, :municipio => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested municipio" do
        municipio = Municipio.create! valid_attributes
        # Assuming there are no other municipios in the database, this
        # specifies that the Municipio created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Municipio.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => municipio.id, :municipio => {'these' => 'params'}
      end

      it "assigns the requested municipio as @municipio" do
        municipio = Municipio.create! valid_attributes
        put :update, :id => municipio.id, :municipio => valid_attributes
        assigns(:municipio).should eq(municipio)
      end

      it "redirects to the municipio" do
        municipio = Municipio.create! valid_attributes
        put :update, :id => municipio.id, :municipio => valid_attributes
        response.should redirect_to(municipio)
      end
    end

    describe "with invalid params" do
      it "assigns the municipio as @municipio" do
        municipio = Municipio.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Municipio.any_instance.stub(:save).and_return(false)
        put :update, :id => municipio.id, :municipio => {}
        assigns(:municipio).should eq(municipio)
      end

      it "re-renders the 'edit' template" do
        municipio = Municipio.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Municipio.any_instance.stub(:save).and_return(false)
        put :update, :id => municipio.id, :municipio => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested municipio" do
      municipio = Municipio.create! valid_attributes
      expect {
        delete :destroy, :id => municipio.id
      }.to change(Municipio, :count).by(-1)
    end

    it "redirects to the municipios list" do
      municipio = Municipio.create! valid_attributes
      delete :destroy, :id => municipio.id
      response.should redirect_to(municipios_url)
    end
  end

end
