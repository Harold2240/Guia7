require 'rails_helper'

RSpec.describe Estudiante, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  context "nombre" do
    it { should validate_presence_of(:nombre) }
    it { should validate_length_of(:nombre).is_at_most(30) }
    it { should_not allow_value("12345").for(:nombre) }
    it { should allow_value("Juan").for(:nombre) }
    it { should allow_value("Juan Antonio").for(:nombre) }
  end
  
  context "apellidos" do
    it { should validate_presence_of(:apellidos) }
    it { should validate_length_of(:apellidos).is_at_most(30) }
    it { should_not allow_value("67890").for(:apellidos) }
    it { should allow_value("García").for(:apellidos) }
    it { should allow_value("García López").for(:apellidos) }
  end

  context "carrera" do
    it { should validate_presence_of(:carrera) }
    it { should validate_length_of(:carrera).is_at_most(50) }
  end
  
  context "carnet" do
    it { should validate_presence_of(:carnet) }
    it { should validate_length_of(:carnet).is_at_most(20) }
  end
end
