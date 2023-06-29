require_relative '../classroom'
require_relative '../student'

describe Classroom do
  let(:classroom) { Classroom.new('Classroom') }
  let(:student) { Student.new(16, 'John Doe') }

  describe '#add_student' do
    it 'adds a student to the classroom' do
      expect {
        classroom.add_student(student)
      }.to change { classroom.students.length }.by(1)
    end

    it 'sets the classroom of the student' do
      classroom.add_student(student)
      expect(student.classroom).to eq(classroom)
    end
  end
end
