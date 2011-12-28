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

describe UnidadesController do

  # This should return the minimal set of attributes required to create a valid
  # Unidade. As you add validations to Unidade, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all unidades as @unidades" do
      unidade = Unidade.create! valid_attributes
      get :index
      assigns(:unidades).should eq([unidade])
    end
  end

  describe "GET show" do
    it "assigns the requested unidade as @unidade" do
      unidade = Unidade.create! valid_attributes
      get :show, :id => unidade.id
      assigns(:unidade).should eq(unidade)
    end
  end

  describe "GET new" do
    it "assigns a new unidade as @unidade" do
      get :new
      assigns(:unidade).should be_a_new(Unidade)
    end
  end

  describe "GET edit" do
    it "assigns the requested unidade as @unidade" do
      unidade = Unidade.create! valid_attributes
      get :edit, :id => unidade.id
      assigns(:unidade).should eq(unidade)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Unidade" do
        expect {
          post :create, :unidade => valid_attributes
        }.to change(Unidade, :count).by(1)
      end

      it "assigns a newly created unidade as @unidade" do
        post :create, :unidade => valid_attributes
        assigns(:unidade).should be_a(Unidade)
        assigns(:unidade).should be_persisted
      end

      it "redirects to the created unidade" do
        post :create, :unidade => valid_attributes
        response.should redirect_to(Unidade.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved unidade as @unidade" do
        # Trigger the behavior that occurs when invalid params are submitted
        Unidade.any_instance.stub(:save).and_return(false)
        post :create, :unidade => {}
        assigns(:unidade).should be_a_new(Unidade)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Unidade.any_instance.stub(:save).and_return(false)
        post :create, :unidade => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested unidade" do
        unidade = Unidade.create! valid_attributes
        # Assuming there are no other unidades in the database, this
        # specifies that the Unidade created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Unidade.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => unidade.id, :unidade => {'these' => 'params'}
      end

      it "assigns the requested unidade as @unidade" do
        unidade = Unidade.create! valid_attributes
        put :update, :id => unidade.id, :unidade => valid_attributes
        assigns(:unidade).should eq(unidade)
      end

      it "redirects to the unidade" do
        unidade = Unidade.create! valid_attributes
        put :update, :id => unidade.id, :unidade => valid_attributes
        response.should redirect_to(unidade)
      end
    end

    describe "with invalid params" do
      it "assigns the unidade as @unidade" do
        unidade = Unidade.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Unidade.any_instance.stub(:save).and_return(false)
        put :update, :id => unidade.id, :unidade => {}
        assigns(:unidade).should eq(unidade)
      end

      it "re-renders the 'edit' template" do
        unidade = Unidade.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Unidade.any_instance.stub(:save).and_return(false)
        put :update, :id => unidade.id, :unidade => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested unidade" do
      unidade = Unidade.create! valid_attributes
      expect {
        delete :destroy, :id => unidade.id
      }.to change(Unidade, :count).by(-1)
    end

    it "redirects to the unidades list" do
      unidade = Unidade.create! valid_attributes
      delete :destroy, :id => unidade.id
      response.should redirect_to(unidades_url)
    end
  end

end