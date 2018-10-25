 enum TimeOfDay{
    case morning
    case daytime
    case nighttime
  }
  
  func getTimeOfDay()->TimeOfDay {
    
    var result = TimeOfDay.daytime
    
    let date = Date()
    let calendar = Calendar.current
    let hour = calendar.component(.hour, from: date)
    let minutes = calendar.component(.minute, from: date)
    
    if (hour > 0) && (hour < 10) {
      result = TimeOfDay.morning
    }
    
    if (hour > 9) && (hour < 21) {
      result = TimeOfDay.daytime
    }
    
    if (hour > 20) {
      result = TimeOfDay.nighttime
    }
    
    return result
  }
  
  func printGreet() {
    
    switch getTimeOfDay() {
      
    case .morning:
      print("Good Morning World!")
      
    case .daytime:
      print("Hello World!")
      
    case .nighttime:
      print("Good Night World!")

    }
  }
