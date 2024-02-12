
(cl:in-package :asdf)

(defsystem "vfh3d-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "CorrectTarget" :depends-on ("_package_CorrectTarget"))
    (:file "_package_CorrectTarget" :depends-on ("_package"))
  ))