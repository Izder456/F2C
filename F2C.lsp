;; Define function to convert Fahrenheit to Celsius
(defun fahrenheit-to-celsius (temperature)
  (/ (* (- temperature 32) 5) 9))

;; Handle I/O
(format t "Enter the temperature in Fahrenheit: ") ;; Prompt user for input
(let ((fahrenheit (parse-integer (read-line)))) ;; Read user input and store it in 'fahrenheit'
  (let ((celsius (fahrenheit-to-celsius fahrenheit))) ;; Convert Fahrenheit to Celsius
    (if (integerp celsius) ;; Check if the result is an integer
        ;; Output integer Celsius temperature
        (format t "Equivalent Celsius temperature: ~d~%" celsius)
        ;; Output float Celsius temperature (trunc to 1 decimal)
        (format t "Equivalent Celsius temperature: ~,1f~%" celsius))))
