;;; clear-text-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "clear-text" "clear-text.el" (0 0 0 0))
;;; Generated autoloads from clear-text.el

(autoload 'clear-text-mode "clear-text" "\
Minor mode to make you use clear text.

If called interactively, enable Clear-Text mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(defvar global-clear-text-mode nil "\
Non-nil if Global Clear-Text mode is enabled.
See the `global-clear-text-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-clear-text-mode'.")

(custom-autoload 'global-clear-text-mode "clear-text" nil)

(autoload 'global-clear-text-mode "clear-text" "\
Toggle Clear-Text mode in all buffers.
With prefix ARG, enable Global Clear-Text mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Clear-Text mode is enabled in all buffers where
`clear-text-mode' would do it.
See `clear-text-mode' for more information on Clear-Text mode.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "clear-text" '("clear-text-")))

;;;***

;;;### (autoloads nil nil ("clear-text-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; clear-text-autoloads.el ends here
