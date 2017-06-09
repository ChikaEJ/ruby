fruits_file = File.open("fruit_2.txt", "w")
data = "bottles 5", "bags 3", "pancils 1000"
fruits_file.write(data.join("\n"))
fruits_file.close
