;;; marcopolo-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "marcopolo-api" "marcopolo-api.el" (0 0 0 0))
;;; Generated autoloads from marcopolo-api.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "marcopolo-api" '("marcopolo--")))

;;;***

;;;### (autoloads nil "marcopolo-custom" "marcopolo-custom.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from marcopolo-custom.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "marcopolo-custom" '("marcopolo-")))

;;;***

;;;### (autoloads nil "marcopolo-errors" "marcopolo-errors.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from marcopolo-errors.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "marcopolo-errors" '("marcopolo-")))

;;;***

;;;### (autoloads nil "marcopolo-hub" "marcopolo-hub.el" (0 0 0 0))
;;; Generated autoloads from marcopolo-hub.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "marcopolo-hub" '("marcopolo--hub-")))

;;;***

;;;### (autoloads nil "marcopolo-mode" "marcopolo-mode.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from marcopolo-mode.el

(autoload 'marcopolo-registry-search "marcopolo-mode" "\
Search from Docker registry repositories using `TERM' request.

\(fn TERM)" t nil)

(autoload 'marcopolo-hub-search "marcopolo-mode" "\
Search from Docker Hub repositories using `TERM' request.

\(fn TERM)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "marcopolo-mode" '("marcopolo-")))

;;;***

;;;### (autoloads nil "marcopolo-registry" "marcopolo-registry.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from marcopolo-registry.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "marcopolo-registry" '("marcopolo--registry-")))

;;;***

;;;### (autoloads nil "marcopolo-ui" "marcopolo-ui.el" (0 0 0 0))
;;; Generated autoloads from marcopolo-ui.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "marcopolo-ui" '("colorize-term")))

;;;***

;;;### (autoloads nil "marcopolo-utils" "marcopolo-utils.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from marcopolo-utils.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "marcopolo-utils" '("marcopolo--")))

;;;***

;;;### (autoloads nil "marcopolo-version" "marcopolo-version.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from marcopolo-version.el

(autoload 'marcopolo-version "marcopolo-version" "\
Get the marcopolo version as string.
If called interactively or if SHOW-VERSION is non-nil, show the
version in the echo area and the messages buffer.
The returned string includes both, the version from package.el
and the library version, if both a present and different.
If the version number could not be determined, signal an error,
if called interactively, or if SHOW-VERSION is non-nil, otherwise
just return nil.

\(fn &optional SHOW-VERSION)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "marcopolo-version" '("marcopolo--library-version")))

;;;***

;;;### (autoloads nil nil ("marcopolo-pkg.el" "marcopolo.el") (0
;;;;;;  0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; marcopolo-autoloads.el ends here
