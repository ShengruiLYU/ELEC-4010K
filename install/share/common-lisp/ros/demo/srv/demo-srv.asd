
(cl:in-package :asdf)

(defsystem "demo-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "addTwoNum" :depends-on ("_package_addTwoNum"))
    (:file "_package_addTwoNum" :depends-on ("_package"))
  ))