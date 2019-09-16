require("minitest/autorun")
require("minitest/rg")
require_relative("../part_a")

class TestStudent < MiniTest::Test

  def test_get_student_name
    student = Student.new("Sujaul", "E34")
    # p student
    assert_equal("Sujaul", student.get_student_name())
  end

  def test_get_balance
    student = Student.new("Sujaul", "E34")
    # p student
    assert_equal("E34", student.get_cohort())
  end

  def test_set_student_name
    student = Student.new("Sujaul", "E34")
    student.set_student_name("Karim")
    assert_equal("Karim", student.get_student_name())
  end

  def test_set_cohort
    student = Student.new("Sujaul", "E34")
    student.set_cohort("E35")
    assert_equal("E35", student.get_cohort())
  end

  def test_student_talks
    student = Student.new("Sujaul", "E34")
    student.get_can_talk()
    assert_equal("I can talk!", student.get_can_talk())
  end

  def test_say_favourite_language_name
    student = Student.new("Sujaul", "E34")
    result = student.say_favourite_language("Ruby")
    assert_equal("I love Ruby", result)
  end

end
