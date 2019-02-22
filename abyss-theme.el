(deftheme abyss
  "Created 2019-02-22.")

(custom-theme-set-faces
 'abyss
 '(bold ((t (:bold t))))
 '(bold-italic ((t (:bold t))))
 '(fringe ((t (:background "#0d1000"))))
 '(font-lock-builtin-face ((t (:foreground "#fcfbe3"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#d55e00" :italic t))))
 '(font-lock-comment-face ((t (:foreground "#d55e00" :italic t))))
 '(font-lock-constant-face ((t (:foreground "#cc79a7"))))
 '(font-lock-doc-face ((t (:foreground "#e69f00"))))
 '(font-lock-string-face ((t (:foreground "#ff00ff"))))
 '(font-lock-function-name-face ((t (:foreground "#56b4e9"))))
 '(font-lock-keyword-face ((t (:foreground "#f8ec59"))))
 '(font-lock-preprocessor-face ((t (:foreground "#0072b2"))))
 '(font-lock-type-face ((t (:foreground "#56b4e9"))))
 '(font-lock-variable-name-face ((t (:foreground "#00ff00"))))
 '(font-lock-negation-char-face ((t (:foreground "#cc79a7"))))
 '(font-lock-warning-face ((t (:foreground "#FF1A00" :bold t))))
 '(mode-line ((t (:background "#56b4e9" :foreground "#0d1000" :box nil))))
 '(mode-line-highlight ((t (:foreground "#fcfbe3" :box nil))))
 '(mode-line-inactive ((t (:foreground "#cc79a7" :background "#0d1000" :box nil))))
 '(region ((t (:foreground "#050000" :background "#cc79a7"))))
 '(italic ((t (nil))))
 '(default ((t (:foreground "#bbe0f0" :background "#050000")))))

(provide-theme 'abyss)
