;;; matrix-client-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "matrix-api-r0.3.0" "matrix-api-r0.3.0.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from matrix-api-r0.3.0.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "matrix-api-r0.3.0" '("funcall-when" "matrix-")))

;;;***

;;;### (autoloads nil "matrix-client" "matrix-client.el" (0 0 0 0))
;;; Generated autoloads from matrix-client.el

(autoload 'matrix-client-connect "matrix-client" "\
Connect to the Matrix.
If already connected, `already-active' is returned; if
connecting, non-nil.

\(fn &optional USER PASSWORD ACCESS-TOKEN SERVER)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "matrix-client" '("matrix-")))

;;;***

;;;### (autoloads nil "matrix-client-frame" "matrix-client-frame.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from matrix-client-frame.el

(autoload 'matrix-client-frame "matrix-client-frame" "\
Open and return the Matrix Client frame on SIDE.
SIDE may be `left', `right', `top', or `bottom'.

Only one such frame should be open at a time.  If more than one
is, only the latest one will have its sidebar updated
automatically.

\(fn &optional SIDE)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "matrix-client-frame" '("matrix-client-")))

;;;***

;;;### (autoloads nil "matrix-client-images" "matrix-client-images.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from matrix-client-images.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "matrix-client-images" '("matrix-client-")))

;;;***

;;;### (autoloads nil "matrix-client-modes" "matrix-client-modes.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from matrix-client-modes.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "matrix-client-modes" '("matrix-client-mode")))

;;;***

;;;### (autoloads nil "matrix-client-rainbow" "matrix-client-rainbow.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from matrix-client-rainbow.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "matrix-client-rainbow" '("global-matrix-client-rainbow-mode" "matrix-client-r")))

;;;***

;;;### (autoloads nil "matrix-client-room" "matrix-client-room.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from matrix-client-room.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "matrix-client-room" '("matrix-")))

;;;***

;;;### (autoloads nil "matrix-client-room-list" "matrix-client-room-list.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from matrix-client-room-list.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "matrix-client-room-list" '("matrix-client-room-list")))

;;;***

;;;### (autoloads nil "matrix-helpers" "matrix-helpers.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from matrix-helpers.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "matrix-helpers" '("a-get*" "matrix-" "oref*" "oset-multi")))

;;;***

;;;### (autoloads nil "matrix-macros" "matrix-macros.el" (0 0 0 0))
;;; Generated autoloads from matrix-macros.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "matrix-macros" '("a-get*" "format$" "if-fn-apply" "matrix-url-with-retrieve-async-timeout-timer" "oref*" "with-")))

;;;***

;;;### (autoloads nil "matrix-notifications" "matrix-notifications.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from matrix-notifications.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "matrix-notifications" '("matrix-client-")))

;;;***

;;;### (autoloads nil "ordered-buffer" "ordered-buffer.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from ordered-buffer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ordered-buffer" '("ordered-buffer-")))

;;;***

;;;### (autoloads nil nil ("matrix-client-faces.el" "matrix-client-pkg.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; matrix-client-autoloads.el ends here
