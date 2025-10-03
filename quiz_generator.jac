import from byllm.llm { Model }

glob llm = Model(model_name = "gemini/gemini-2.0-flash");

#*
Generate quiz questions based on the given topic.
The function should create multiple choice questions with 4 options and indicate the correct answer.
*#

def generate_quiz(topic: str) -> str byllm();

with entry {
    print("Welcome to the AI Quiz Generator!");
    print("Enter a topic to generate quiz questions, or 'exit' to quit");
    
    while True {
        topic = input("Enter topic: ");
        if topic == 'exit' {
            break;
        }
        quiz = generate_quiz(topic);
        print("Generated Quiz:");
        print(quiz);
        print("---");
    }
    print("Goodbye!");
}