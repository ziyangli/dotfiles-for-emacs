;; hbin-prog.el --- Feel fly when I program.
;;
;; Copyright (C) 2012 Huang Bin
;;
;; Author: Huang Bin <embrace.hbin@gmail.com>
;; Version: 1.0.0

;; This file is not part of GNU Emacs.

;;; License:

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:

(defun hbin-prog-mode-init ()
  "Common settings for programming."
  (fic-mode 1)
  (autopair-mode 1)
  (textmate-mode 1)
  (rainbow-delimiters-mode 1)

  (local-set-key (kbd "C-M-h") 'backward-kill-word)
  (local-set-key (kbd "C-j") 'reindent-then-newline-and-indent))

(add-hook 'prog-mode-hook 'hbin-prog-mode-init)

;;;  Enhanced programming languages
(require 'prog-lua)
(require 'prog-web)
(require 'prog-lisp)
(require 'prog-ruby)
(require 'prog-python)
(require 'prog-feature)

;;;;;;;;;;;;;;;;;;;;;;;;;

(provide 'hbin-prog)

;;;;;; hbin-prog.el END
