;; perform matrix-scalar calculations

;; define a simple 2x2 matrix
(setf 22-matrix (make-array '(2 2) :initial-contents '((3 4)
						    (2 -1))))

(defun scalar-matrix-multiplication (scalar matrix)
  "Perform scalar multiplication on a 2x2 matrix.

  Arguments:
  - SCALAR: A scalar value for multiplication.
  - MATRIX: A 2x2 matrix for multiplication.

  Returns:
  A new 2x2 matrix resulting from the scalar multiplication."

  (let ((row1col1 (* scalar (aref matrix 0 0)))
	(row1col2 (* scalar (aref matrix 0 1)))
	(row2col1 (* scalar (aref matrix 1 0)))
	(row2col2 (* scalar (aref matrix 1 1))))
    (setq matrix-dims (array-dimensions matrix))
    (setq result-matrix (make-array matrix-dims :initial-contents
				    (list (list row1col1 row1col2)
					  (list row2col1 row2col2))))
    result-matrix))

; initialize a 3x2 matrix
(setf 32-matrix (make-array '(3 2) :initial-contents '((4 5)
						       (2 4)
						       (3 3))))

(defun matrix-vector-multiplication (vector matrix)
  "Perform 3x2-matrix 2x1-vector multiplication.

  Arguments:
  - VECTOR: the vector
  - MATRIX: the matrix

  Returns:
  A new vector resulting from the matrix vector multiplication."

  (let ((result (* (aref matrix 0 0) (aref vector 0 0))
