
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (lisppaste asciidoc)))
 '(save-place nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
   

(setq global-linum-mode t);行号
(setq column-number-mode t)
(setq line-number-mode t)
(display-time-mode 2) 


(add-to-list 'load-path "~/.emacs.d/")	  
;; 实现全屏效果，快捷键为f11
(setq default-frame-alist (append '((top . 0)(left . 0)(width 1.0)(height 1.0.)) default-frame-alist))			  
(set-default-font "DejaVu Sans Mono for Powerline-12.0")
(require 'color-theme) 
(color-theme-dark-blue2)


(x-send-client-message
DISPLAY DEST FROM
MESSAGE-TYPE FORMAT VALUES)
;; 设置全局绑定键F11开启或关闭全屏
(global-set-key [f11] 'my-fullscreen)
;; 定义全屏函数
(defun my-fullscreen ()
(interactive)
(x-send-client-message
nil 0 nil
"_NET_WM_STATE" 32
'(2 "_NET_WM_STATE_FULLSCREEN" 0))
)


;;最大化
;(defun my-maximized ()
;  (interactive)
;  (x-send-client-message
;   nil 0 nil "_NET_WM_STATE" 32
;   '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
;  (x-send-client-message
;   nil 0 nil "_NET_WM_STATE" 32
;   '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
;)
;;启动时最大化
;(my-maximized)


;(add-to-list 'load-path "~/.emacs.d/el-get/el-get")  

;;(unless (require 'el-get nil t)
;;   (url-retrieve
;;     "https://github.com/dimitri/el-get/raw/master/el-get-install.el"
;;     (lambda (s) (end-of-buffer) (eval-print-last-sexp))))
;;	 
;;(setq
;; el-get-sources
;; '((:name asciidoc
;;          :type elpa
;;          :after (progn
;;                   (autoload 'doc-mode "doc-mode" nil t)
;;                   (add-to-list 'auto-mode-alist '("\.adoc$" . doc-mode))
;;                   (add-hook 'doc-mode-hook '(progn
;;                                               (turn-on-auto-fill)
;;                                               (require 'asciidoc)))))
;;
;;   (:name buffer-move   ; have to add your own keys
;;           :after (progn
;;                    (global-set-key (kbd "<C-S-up>") 'buf-move-up)
;;                    (global-set-key (kbd "<C-S-down>") 'buf-move-down)
;;                    (global-set-key (kbd "<C-S-left>") 'buf-move-left)
;;                    (global-set-key (kbd "<C-S-right>") 'buf-move-right)))
;;
;;   (:name smex  ; a better (ido like) M-x
;;          :after (progn
;;                   (setq smex-save-file "~/.emacs.d/.smex-items")
;;                   (global-set-key (kbd "M-x") 'smex)
;;                   (global-set-key (kbd "M-X") 'smex-major-mode-commands)))
;;
;;   (:name lisppaste        :type elpa)))
;;
;;(setq my-packages
;;      (append
;;       '(cssh el-get switch-window escreen vkill xcscope color-theme color-theme-railscasts color-theme-tomorrow yasnippet python-mode python-pep8 pymacs rope ropemacs ropemode pylookup haskell-mode anything helm emacs-w3m auto-complete browse-kill-ring sr-speedbar session popup markdown-mode xml-rpc-el)
;;       (mapcar 'el-get-source-name el-get-sources)))
;;
;;(el-get 'sync my-packages)
;;
;;;; w3m
;;;load & init 
;;(autoload 'w3m "w3m" "interface for w3m on emacs" t)
;;(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
;;(autoload 'w3m-search "w3m-search" "Search words using emacs-w3m." t)
;;
;;;settings
;;(setq w3m-use-cookies t)
;;(setq w3m-home-page "http://www.google.com")
;;
;;(require 'mime-w3m) 
;;(setq w3m-default-display-inline-image t) 
;;(setq w3m-default-toggle-inline-images t)
;;

