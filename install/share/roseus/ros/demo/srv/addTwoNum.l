;; Auto-generated. Do not edit!


(when (boundp 'demo::addTwoNum)
  (if (not (find-package "DEMO"))
    (make-package "DEMO"))
  (shadow 'addTwoNum (find-package "DEMO")))
(unless (find-package "DEMO::ADDTWONUM")
  (make-package "DEMO::ADDTWONUM"))
(unless (find-package "DEMO::ADDTWONUMREQUEST")
  (make-package "DEMO::ADDTWONUMREQUEST"))
(unless (find-package "DEMO::ADDTWONUMRESPONSE")
  (make-package "DEMO::ADDTWONUMRESPONSE"))

(in-package "ROS")





(defclass demo::addTwoNumRequest
  :super ros::object
  :slots (_a _b ))

(defmethod demo::addTwoNumRequest
  (:init
   (&key
    ((:a __a) 0.0)
    ((:b __b) 0.0)
    )
   (send-super :init)
   (setq _a (float __a))
   (setq _b (float __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; float32 _a
    4
    ;; float32 _b
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _a
       (sys::poke _a (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _b
       (sys::poke _b (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _a
     (setq _a (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _b
     (setq _b (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass demo::addTwoNumResponse
  :super ros::object
  :slots (_sum ))

(defmethod demo::addTwoNumResponse
  (:init
   (&key
    ((:sum __sum) 0.0)
    )
   (send-super :init)
   (setq _sum (float __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; float32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _sum
       (sys::poke _sum (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _sum
     (setq _sum (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass demo::addTwoNum
  :super ros::object
  :slots ())

(setf (get demo::addTwoNum :md5sum-) "210a18f816d5b88becb133b82fae0c4c")
(setf (get demo::addTwoNum :datatype-) "demo/addTwoNum")
(setf (get demo::addTwoNum :request) demo::addTwoNumRequest)
(setf (get demo::addTwoNum :response) demo::addTwoNumResponse)

(defmethod demo::addTwoNumRequest
  (:response () (instance demo::addTwoNumResponse :init)))

(setf (get demo::addTwoNumRequest :md5sum-) "210a18f816d5b88becb133b82fae0c4c")
(setf (get demo::addTwoNumRequest :datatype-) "demo/addTwoNumRequest")
(setf (get demo::addTwoNumRequest :definition-)
      "float32 a
float32 b
---
float32 sum

")

(setf (get demo::addTwoNumResponse :md5sum-) "210a18f816d5b88becb133b82fae0c4c")
(setf (get demo::addTwoNumResponse :datatype-) "demo/addTwoNumResponse")
(setf (get demo::addTwoNumResponse :definition-)
      "float32 a
float32 b
---
float32 sum

")



(provide :demo/addTwoNum "210a18f816d5b88becb133b82fae0c4c")


