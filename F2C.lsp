;; define function (defun) to convert fahrenheit to celsius
(defun fahrenheit-to-celsius (temperature)
  (/ (* (- temperature 32) 5) 9)
)

;; Handle I/O
(format t "Enter the temperature in Fahrenheit: ")
(let ((fahrenheit (parse-integer (read-line))))
  (let ((celsius (fahrenheit-to-celsius fahrenheit)))
    (if (integerp celsius) ;; Conditional output
        ;; If integer, output as integer
        (format t "Equivalent Celsius temperature: ~d~%" celsius)
        ;; If float, output truncated
        (format t "Equivalent Celsius temperature: ~,1f~%" celsius)
    )
  )
)
