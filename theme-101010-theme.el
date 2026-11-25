;;; theme-101010-theme.el --- 101010 color theme for Emacs 24 built on top of Gruber Darker and inspired by monoglow.nvim.  -*- lexical-binding: t; -*-

;; OG: https://github.com/rexim/gruber-darker-theme
;; Inspired by: https://github.com/wnkz/monoglow.nvim

;; Copyright (C) 2026-2026 Artiom Gutan a.k.a artemis
;; Copyright (C) 2013-2016 Alexey Kutepov a.k.a rexim
;; Copyright (C) 2009-2010 Jason R. Blevins

;; Author: Artiom Gutan <gutsan.artiom@gmail.com>
;; URL: https://github.com/ra1nlox/101010-emacs-theme
;; Version: 0.1

;; Permission is hereby granted, free of charge, to any person
;; obtaining a copy of this software and associated documentation
;; files (the "Software"), to deal in the Software without
;; restriction, including without limitation the rights to use, copy,
;; modify, merge, publish, distribute, sublicense, and/or sell copies
;; of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:

;; The above copyright notice and this permission notice shall be
;; included in all copies or substantial portions of the Software.

;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
;; BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
;; ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
;; CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.

(deftheme theme-101010
  "101010-theme color theme for Emacs 24")


;; Please, install rainbow-mode.
;; Colors with +x are lighter. Colors with -x are darker.
(let ((101010-theme-fg        "#e4e4e4")
      (101010-theme-fg+1      "#f4f4f4")
      (101010-theme-fg+2      "#f5f5f5")
      (101010-theme-white     "#ffffff")
      (101010-theme-black     "#000000")
      (101010-theme-bg-1      "#0F0F0F")
      (101010-theme-bg        "#101010")
      (101010-theme-bg+1      "#282828")
      (101010-theme-bg+2      "#3d4542")
      (101010-theme-bg+3      "#484848")
      (101010-theme-bg+4      "#5b6166")
      (101010-theme-mckenzie  "#4326c7")
      (101010-theme-red       "#f43841")
      (101010-theme-red+1     "#ff4f58")
      (101010-theme-breeze    "#31a898")
      (101010-theme-mint      "#13ff99")
      (101010-theme-dark-blue "#356ab0")
      (101010-theme-quartz    "#69706d")
      (101010-theme-niagara-2 "#303540")
      (101010-theme-niagara-1 "#565f73")
      (101010-theme-niagara   "#96a6c8")
      (101010-theme-wisteria  "#9e95c7")
      )
  (custom-theme-set-variables
   'theme-101010
   '(frame-background-mode 'dark))

  (custom-theme-set-faces
   'theme-101010

   ;; Agda2
   `(agda2-highlight-datatype-face ((t (:foreground ,101010-theme-quartz))))
   `(agda2-highlight-primitive-type-face ((t (:foreground ,101010-theme-quartz))))
   `(agda2-highlight-function-face ((t (:foreground ,101010-theme-niagara))))
   `(agda2-highlight-keyword-face ((t ,(list :foreground 101010-theme-mint
                                             :bold t))))
   `(agda2-highlight-inductive-constructor-face ((t (:foreground ,101010-theme-breeze))))
   `(agda2-highlight-number-face ((t (:foreground ,101010-theme-wisteria))))

   ;; AUCTeX
   `(font-latex-bold-face ((t (:foreground ,101010-theme-quartz :bold t))))
   `(font-latex-italic-face ((t (:foreground ,101010-theme-quartz :italic t))))
   `(font-latex-math-face ((t (:foreground ,101010-theme-breeze))))
   `(font-latex-sectioning-5-face ((t ,(list :foreground 101010-theme-niagara
                                             :bold t))))
   `(font-latex-slide-title-face ((t (:foreground ,101010-theme-niagara))))
   `(font-latex-string-face ((t (:foreground ,101010-theme-breeze))))
   `(font-latex-warning-face ((t (:foreground ,101010-theme-mckenzie))))

   ;; Basic Coloring (or Uncategorized)
   `(border ((t ,(list :background 101010-theme-bg-1
                       :foreground 101010-theme-bg+2))))
   `(cursor ((t (:background ,101010-theme-mint))))
   `(default ((t ,(list :foreground 101010-theme-fg
                        :background 101010-theme-bg))))
   `(fringe ((t ,(list :background nil
                       :foreground 101010-theme-bg+2))))
   `(vertical-border ((t ,(list :foreground 101010-theme-bg+2))))
   `(link ((t (:foreground ,101010-theme-niagara :underline t))))
   `(link-visited ((t (:foreground ,101010-theme-wisteria :underline t))))
   `(match ((t (:background ,101010-theme-bg+4))))
   `(shadow ((t (:foreground ,101010-theme-bg+4))))
   `(minibuffer-prompt ((t (:foreground ,101010-theme-niagara))))
   `(region ((t (:background ,101010-theme-bg+3 :foreground nil))))
   `(secondary-selection ((t ,(list :background 101010-theme-bg+3
                                    :foreground nil))))
   `(trailing-whitespace ((t ,(list :foreground 101010-theme-black
                                    :background 101010-theme-red))))
   `(tooltip ((t ,(list :background 101010-theme-bg+4
                        :foreground 101010-theme-white))))

   ;; Calendar
   `(holiday-face ((t (:foreground ,101010-theme-red))))

   ;; Compilation
   `(compilation-info ((t ,(list :foreground 101010-theme-breeze
                                 :inherit 'unspecified))))
   `(compilation-warning ((t ,(list :foreground 101010-theme-mckenzie
                                    :bold t
                                    :inherit 'unspecified))))
   `(compilation-error ((t (:foreground ,101010-theme-red+1))))
   `(compilation-mode-line-fail ((t ,(list :foreground 101010-theme-red
                                           :weight 'bold
                                           :inherit 'unspecified))))
   `(compilation-mode-line-exit ((t ,(list :foreground 101010-theme-breeze
                                           :weight 'bold
                                           :inherit 'unspecified))))

   ;; Completion
   `(completions-annotations ((t (:inherit 'shadow))))

   ;; Custom
   `(custom-state ((t (:foreground ,101010-theme-breeze))))

   ;; Diff
   `(diff-removed ((t ,(list :foreground 101010-theme-red+1
                             :background nil))))
   `(diff-added ((t ,(list :foreground 101010-theme-breeze
                           :background nil))))

   ;; Dired
   `(dired-directory ((t (:foreground ,101010-theme-niagara :weight bold))))
   `(dired-ignored ((t ,(list :foreground 101010-theme-quartz
                              :inherit 'unspecified))))

   ;; Ebrowse
   `(ebrowse-root-class ((t (:foreground ,101010-theme-niagara :weight bold))))
   `(ebrowse-progress ((t (:background ,101010-theme-niagara))))

   ;; Egg
   `(egg-branch ((t (:foreground ,101010-theme-mint))))
   `(egg-branch-mono ((t (:foreground ,101010-theme-mint))))
   `(egg-diff-add ((t (:foreground ,101010-theme-breeze))))
   `(egg-diff-del ((t (:foreground ,101010-theme-red))))
   `(egg-diff-file-header ((t (:foreground ,101010-theme-wisteria))))
   `(egg-help-header-1 ((t (:foreground ,101010-theme-mint))))
   `(egg-help-header-2 ((t (:foreground ,101010-theme-niagara))))
   `(egg-log-HEAD-name ((t (:box (:color ,101010-theme-fg)))))
   `(egg-reflog-mono ((t (:foreground ,101010-theme-niagara-1))))
   `(egg-section-title ((t (:foreground ,101010-theme-mint))))
   `(egg-text-base ((t (:foreground ,101010-theme-fg))))
   `(egg-term ((t (:foreground ,101010-theme-mint))))

   ;; ERC
   `(erc-notice-face ((t (:foreground ,101010-theme-wisteria))))
   `(erc-timestamp-face ((t (:foreground ,101010-theme-breeze))))
   `(erc-input-face ((t (:foreground ,101010-theme-red+1))))
   `(erc-my-nick-face ((t (:foreground ,101010-theme-red+1))))

   ;; EShell
   `(eshell-ls-backup ((t (:foreground ,101010-theme-quartz))))
   `(eshell-ls-directory ((t (:foreground ,101010-theme-niagara))))
   `(eshell-ls-executable ((t (:foreground ,101010-theme-breeze))))
   `(eshell-ls-symlink ((t (:foreground ,101010-theme-mint))))

   ;; Font Lock
   `(font-lock-builtin-face ((t (:foreground ,101010-theme-mint))))
   `(font-lock-comment-face ((t (:foreground ,101010-theme-dark-blue))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,101010-theme-dark-blue))))
   `(font-lock-constant-face ((t (:foreground ,101010-theme-quartz))))
   `(font-lock-doc-face ((t (:foreground ,101010-theme-breeze))))
   `(font-lock-doc-string-face ((t (:foreground ,101010-theme-breeze))))
   `(font-lock-function-name-face ((t (:foreground ,101010-theme-niagara))))
   `(font-lock-keyword-face ((t (:foreground ,101010-theme-mint :bold t))))
   `(font-lock-preprocessor-face ((t (:foreground ,101010-theme-quartz))))
   `(font-lock-reference-face ((t (:foreground ,101010-theme-quartz))))
   `(font-lock-string-face ((t (:foreground ,101010-theme-breeze))))
   `(font-lock-type-face ((t (:foreground ,101010-theme-quartz))))
   `(font-lock-variable-name-face ((t (:foreground ,101010-theme-fg+1))))
   `(font-lock-warning-face ((t (:foreground ,101010-theme-mckenzie))))

   ;; Flymake
   `(flymake-errline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,101010-theme-red)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:foreground ,101010-theme-red :weight bold :underline t))))
   `(flymake-warnline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,101010-theme-mckenzie)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:foreground ,101010-theme-mint :weight bold :underline t))))
   `(flymake-infoline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,101010-theme-breeze)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:foreground ,101010-theme-breeze :weight bold :underline t))))

   ;; Flyspell
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,101010-theme-red) :inherit unspecified))
      (t (:foreground ,101010-theme-red :weight bold :underline t))))
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,101010-theme-mint) :inherit unspecified))
      (t (:foreground ,101010-theme-mint :weight bold :underline t))))

   ;; Helm
   `(helm-candidate-number ((t ,(list :background 101010-theme-bg+2
                                      :foreground 101010-theme-mint
                                      :bold t))))
   `(helm-ff-directory ((t ,(list :foreground 101010-theme-niagara
                                  :background 101010-theme-bg
                                  :bold t))))
   `(helm-ff-executable ((t (:foreground ,101010-theme-breeze))))
   `(helm-ff-file ((t (:foreground ,101010-theme-fg :inherit unspecified))))
   `(helm-ff-invalid-symlink ((t ,(list :foreground 101010-theme-bg
                                        :background 101010-theme-red))))
   `(helm-ff-symlink ((t (:foreground ,101010-theme-mint :bold t))))
   `(helm-selection-line ((t (:background ,101010-theme-bg+1))))
   `(helm-selection ((t (:background ,101010-theme-bg+1 :underline nil))))
   `(helm-source-header ((t ,(list :foreground 101010-theme-mint
                                   :background 101010-theme-bg
                                   :box (list :line-width -1
                                              :style 'released-button)))))

   ;; Ido
   `(ido-first-match ((t (:foreground ,101010-theme-mint :bold nil))))
   `(ido-only-match ((t (:foreground ,101010-theme-dark-blue :weight bold))))
   `(ido-subdir ((t (:foreground ,101010-theme-niagara :weight bold))))

   ;; Info
   `(info-xref ((t (:foreground ,101010-theme-niagara))))
   `(info-visited ((t (:foreground ,101010-theme-wisteria))))

   ;; Jabber
   `(jabber-chat-prompt-foreign ((t ,(list :foreground 101010-theme-quartz
                                           :bold nil))))
   `(jabber-chat-prompt-local ((t (:foreground ,101010-theme-mint))))
   `(jabber-chat-prompt-system ((t (:foreground ,101010-theme-breeze))))
   `(jabber-rare-time-face ((t (:foreground ,101010-theme-breeze))))
   `(jabber-roster-user-online ((t (:foreground ,101010-theme-breeze))))
   `(jabber-activity-face ((t (:foreground ,101010-theme-red))))
   `(jabber-activity-personal-face ((t (:foreground ,101010-theme-mint :bold t))))

   ;; Line Highlighting
   `(highlight ((t (:background ,101010-theme-bg+1 :foreground nil))))
   `(highlight-current-line-face ((t ,(list :background 101010-theme-bg+1
                                            :foreground nil))))

   ;; line numbers
   `(line-number ((t (:inherit default :foreground ,101010-theme-bg+4))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,101010-theme-mint))))

   ;; Linum
   `(linum ((t (:foreground 101010-theme-quartz
                      :background 101010-theme-bg))))

   ;; Magit
   `(magit-branch ((t (:foreground ,101010-theme-niagara))))
   `(magit-diff-hunk-header ((t (:background ,101010-theme-bg+2))))
   `(magit-diff-file-header ((t (:background ,101010-theme-bg+4))))
   `(magit-log-sha1 ((t (:foreground ,101010-theme-red+1))))
   `(magit-log-author ((t (:foreground ,101010-theme-dark-blue))))
   `(magit-log-head-label-remote ((t ,(list :foreground 101010-theme-breeze
                                            :background 101010-theme-bg+1))))
   `(magit-log-head-label-local ((t ,(list :foreground 101010-theme-niagara
                                           :background 101010-theme-bg+1))))
   `(magit-log-head-label-tags ((t ,(list :foreground 101010-theme-mint
                                          :background 101010-theme-bg+1))))
   `(magit-log-head-label-head ((t ,(list :foreground 101010-theme-fg
                                          :background 101010-theme-bg+1))))
   `(magit-item-highlight ((t (:background ,101010-theme-bg+1))))
   `(magit-tag ((t ,(list :foreground 101010-theme-mint
                          :background 101010-theme-bg))))
   `(magit-blame-heading ((t ,(list :background 101010-theme-bg+1
                                    :foreground 101010-theme-fg))))

   ;; Message
   `(message-header-name ((t (:foreground ,101010-theme-breeze))))

   ;; Mode Line
   `(mode-line ((t ,(list :background 101010-theme-bg-1
                          :foreground 101010-theme-white))))
   `(mode-line-buffer-id ((t ,(list :background 101010-theme-bg-1
                                    :foreground 101010-theme-white))))
   `(mode-line-inactive ((t ,(list :background 101010-theme-bg-1
                                   :foreground 101010-theme-quartz))))

   ;; Neo Dir
   `(neo-dir-link-face ((t (:foreground ,101010-theme-niagara))))

   ;; Org Mode
   `(org-agenda-structure ((t (:foreground ,101010-theme-niagara))))
   `(org-column ((t (:background ,101010-theme-bg-1))))
   `(org-column-title ((t (:background ,101010-theme-bg-1 :underline t :weight bold))))
   `(org-done ((t (:foreground ,101010-theme-breeze))))
   `(org-todo ((t (:foreground ,101010-theme-mckenzie))))
   `(org-upcoming-deadline ((t (:foreground ,101010-theme-mint))))

   ;; Search
   `(isearch ((t ,(list :foreground 101010-theme-black
                        :background 101010-theme-fg+2))))
   `(isearch-fail ((t ,(list :foreground 101010-theme-black
                             :background 101010-theme-red))))
   `(isearch-lazy-highlight-face ((t ,(list
                                       :foreground 101010-theme-fg+1
                                       :background 101010-theme-niagara-1))))

   ;; Sh
   `(sh-quoted-exec ((t (:foreground ,101010-theme-red+1))))

   ;; Show Paren
   `(show-paren-match-face ((t (:background ,101010-theme-bg+4))))
   `(show-paren-mismatch-face ((t (:background ,101010-theme-mckenzie))))

   ;; Slime
   `(slime-repl-inputed-output-face ((t (:foreground ,101010-theme-red))))

   ;; Tuareg
   `(tuareg-font-lock-governing-face ((t (:foreground ,101010-theme-mint))))

   ;; Speedbar
   `(speedbar-directory-face ((t ,(list :foreground 101010-theme-niagara
                                        :weight 'bold))))
   `(speedbar-file-face ((t (:foreground ,101010-theme-fg))))
   `(speedbar-highlight-face ((t (:background ,101010-theme-bg+1))))
   `(speedbar-selected-face ((t (:foreground ,101010-theme-red))))
   `(speedbar-tag-face ((t (:foreground ,101010-theme-mint))))

   ;; Which Function
   `(which-func ((t (:foreground ,101010-theme-wisteria))))

   ;; Whitespace
   `(whitespace-space ((t ,(list :background 101010-theme-bg
                                 :foreground 101010-theme-bg+1))))
   `(whitespace-tab ((t ,(list :background 101010-theme-bg
                               :foreground 101010-theme-bg+1))))
   `(whitespace-hspace ((t ,(list :background 101010-theme-bg
                                  :foreground 101010-theme-bg+2))))
   `(whitespace-line ((t ,(list :background 101010-theme-bg+2
                                :foreground 101010-theme-red+1))))
   `(whitespace-newline ((t ,(list :background 101010-theme-bg
                                   :foreground 101010-theme-bg+2))))
   `(whitespace-trailing ((t ,(list :background 101010-theme-red
                                    :foreground 101010-theme-red))))
   `(whitespace-empty ((t ,(list :background 101010-theme-mint
                                 :foreground 101010-theme-mint))))
   `(whitespace-indentation ((t ,(list :background 101010-theme-mint
                                       :foreground 101010-theme-red))))
   `(whitespace-space-after-tab ((t ,(list :background 101010-theme-mint
                                           :foreground 101010-theme-mint))))
   `(whitespace-space-before-tab ((t ,(list :background 101010-theme-dark-blue
                                            :foreground 101010-theme-dark-blue))))

   ;; tab-bar
   `(tab-bar ((t (:background ,101010-theme-bg+1 :foreground ,101010-theme-bg+4))))
   `(tab-bar-tab ((t (:background nil :foreground ,101010-theme-mint :weight bold))))
   `(tab-bar-tab-inactive ((t (:background nil))))

   ;; vterm / ansi-term
   `(term-color-black ((t (:foreground ,101010-theme-bg+3 :background ,101010-theme-bg+4))))
   `(term-color-red ((t (:foreground ,101010-theme-mckenzie :background ,101010-theme-mckenzie))))
   `(term-color-green ((t (:foreground ,101010-theme-breeze :background ,101010-theme-breeze))))
   `(term-color-blue ((t (:foreground ,101010-theme-niagara :background ,101010-theme-niagara))))
   `(term-color-yellow ((t (:foreground ,101010-theme-mint :background ,101010-theme-mint))))
   `(term-color-magenta ((t (:foreground ,101010-theme-wisteria :background ,101010-theme-wisteria))))
   `(term-color-cyan ((t (:foreground ,101010-theme-quartz :background ,101010-theme-quartz))))
   `(term-color-white ((t (:foreground ,101010-theme-fg :background ,101010-theme-white))))

   ;; company-mode
   `(company-tooltip ((t (:foreground ,101010-theme-fg :background ,101010-theme-bg+1))))
   `(company-tooltip-annotation ((t (:foreground ,101010-theme-dark-blue :background ,101010-theme-bg+1))))
   `(company-tooltip-annotation-selection ((t (:foreground ,101010-theme-dark-blue :background ,101010-theme-bg-1))))
   `(company-tooltip-selection ((t (:foreground ,101010-theme-fg :background ,101010-theme-bg-1))))
   `(company-tooltip-mouse ((t (:background ,101010-theme-bg-1))))
   `(company-tooltip-common ((t (:foreground ,101010-theme-breeze))))
   `(company-tooltip-common-selection ((t (:foreground ,101010-theme-breeze))))
   `(company-scrollbar-fg ((t (:background ,101010-theme-bg-1))))
   `(company-scrollbar-bg ((t (:background ,101010-theme-bg+2))))
   `(company-preview ((t (:background ,101010-theme-breeze))))
   `(company-preview-common ((t (:foreground ,101010-theme-breeze :background ,101010-theme-bg-1))))

   ;; Proof General
   `(proof-locked-face ((t (:background ,101010-theme-niagara-2))))

   ;; Orderless
   `(orderless-match-face-0 ((t (:foreground ,101010-theme-mint))))
   `(orderless-match-face-1 ((t (:foreground ,101010-theme-breeze))))
   `(orderless-match-face-2 ((t (:foreground ,101010-theme-dark-blue))))
   `(orderless-match-face-3 ((t (:foreground ,101010-theme-quartz))))

   ;; header
   `(header-line ((t (:background ,101010-theme-bg))))

   `(header-line
    ((t (:foreground ,101010-theme-mint
        :background ,101010-theme-bg
        :box nil))))

   `(header-line-active
    ((t (:foreground ,101010-theme-mint
        :background ,101010-theme-bg
        :box nil))))

   `(header-line-inactive
    ((t (:foreground ,101010-theme-mint
        :background ,101010-theme-bg
        :box nil))))

   `(lsp-headerline-breadcrumb-symbols-warning-face
   ((t  (
        :underline (:color ,101010-theme-mckenzie :style wave)
        :foreground ,101010-theme-mint
        :background ,101010-theme-bg
        :box nil))))

   `(lsp-headerline-breadcrumb-path-warning-face
   ((t  (
        :underline (:color ,101010-theme-mckenzie :style wave)
        :foreground ,101010-theme-mint
        :background ,101010-theme-bg
        :box nil))))
   )
)

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'theme-101010)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; theme-101010-theme.el ends here.
