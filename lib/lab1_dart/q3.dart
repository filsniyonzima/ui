void main() {
  createTeacher('Fils', 'Mathematics');
  createTeacher('Ikuza');
}

void createTeacher(String name, [String? subject]) {
  if (subject != null) {
    print('Teacher: $name, Subject: $subject');
  } else {
    print('Teacher: $name, Subject not assigned');
  }
}