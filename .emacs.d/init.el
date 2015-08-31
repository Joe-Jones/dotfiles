(require 'package)

(add-to-list
 'package-archives
 '("melpa" . "http://melpa.org/packages/")
 t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defconst package-list
  '(cider
    helm
    helm-gtags))


(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))


;(setq helm-gtags-prefix-key "\C-cg")

(setq helm-gtags-suggested-key-mapping t)

(require 'helm-config)

;;; Enable helm-gtags-mode
(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)

  
