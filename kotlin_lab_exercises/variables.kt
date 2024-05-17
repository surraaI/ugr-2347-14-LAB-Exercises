fun main() {
    val currentTime = "10:30 PM"
    println("Current time: $currentTime")

    val temperature: Double = 25.5
    println("Current temperature: $temperature°C")

    
    
    val score: Int = 85
    val grade: Char = when (score) {
        in 90..100 -> 'A'
        in 80..89 -> 'B'
        in 70..79 -> 'C'
        in 60..69 -> 'D'
        else -> 'F'
    }
    println("Student's score: $score")
    println("Student's grade: $grade")
    }

