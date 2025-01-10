func calculateArea(width: Double, height: Double) -> Double {
  return width * height
}

let area = calculateArea(width: 10, height: 5) // Correct usage
print(area) // Output: 50.0

func calculateAreaSafe(width: Double, height: String?) -> Double? {
  guard let heightDouble = Double(height) else {
    return nil // Handle the error gracefully, return nil if conversion fails
  }
  return width * heightDouble
}

let area2 = calculateAreaSafe(width: 10, height: "5")
print(area2 ?? "Error: Invalid height") // Output: Optional(50.0)

let area3 = calculateAreaSafe(width: 10, height: "abc")
print(area3 ?? "Error: Invalid height") // Output: Error: Invalid height