;;; ~/.doom.d/autoload/+hydras.el -*- lexical-binding: t; -*-

;;;###autoload (autoload 'doom-text-zoom-hydra/body "autoload/+hydras" nil nil)
(defhydra doom-text-zoom-hydra (:hint t :color red)
  "
      Text zoom: _j_:zoom in, _k_:zoom out, _0_:reset
"
  ("j" text-scale-increase "in")
  ("k" text-scale-decrease "out")
  ("0" (text-scale-set 0) "reset"))

;;;###autoload (autoload 'doom-window-nav-hydra/body "autoload/+hydras" nil nil)
(defhydra doom-window-nav-hydra (:hint nil)
  "
          Split: _v_ert  _s_:horz
         Delete: _c_lose  _o_nly
  Switch Window: _h_:left  _j_:down  _k_:up  _l_:right
        Buffers: _p_revious  _n_ext  _b_:select  _f_ind-file
         Resize: _H_:splitter left  _J_:splitter down  _K_:splitter up  _L_:splitter right
           Move: _a_:up  _z_:down  _i_menu
"
  ("z" scroll-up-line)
  ("a" scroll-down-line)
  ("i" idomenu)

  ("h" windmove-left)
  ("j" windmove-down)
  ("k" windmove-up)
  ("l" windmove-right)

  ("p" previous-buffer)
  ("n" next-buffer)
  ("b" switch-to-buffer)
  ("f" find-file)

  ("s" split-window-below)
  ("v" split-window-right)

  ("c" delete-window)
  ("o" delete-other-windows)

  ("H" hydra-move-splitter-left)
  ("J" hydra-move-splitter-down)
  ("K" hydra-move-splitter-up)
  ("L" hydra-move-splitter-right)

  ("q" nil))


;;;###autoload (autoload 'doom-neotree-helpful-hydra/body "autoload/+hydras" nil nil)
(defhydra doom-neotree-helpful-hydra (:hint t :color red)
  "
Navigation^^^^             Actions^^         Visual actions/config^^^
───────^^^^─────────────── ───────^^──────── ───────^^^────────────────
[_L_]   next sibling^^     [_c_] create      [_TAB_] shrink/enlarge
[_H_]   previous sibling^^ [_C_] copy        [_|_]   vertical split
[_J_]   goto child^^       [_d_] delete      [_-_]   horizontal split
[_K_]   goto parent^^      [_r_] rename      [_gr_]  refresh^
[_l_]   open/expand^^      [_R_] change root ^^^
[_j_]   line down^^        ^^                ^^^
[_k_]   line up^^          ^^                ^^
[_'_]   quick look         ^^                ^^
^^^                        ^^^^              [_?_]   close hints
"
  ("RET" nil)
  ("TAB" neotree-stretch-toggle)
  ("|" neotree-enter-vertical-split)
  ("-" neotree-enter-horizontal-split)
  ("'" neotree-quick-look)
  ("c" neotree-create-node)
  ("C" neotree-copy-node)
  ("d" neotree-delete-node)
  ("gr" neotree-refresh)
  ("H" neotree-select-previous-sibling-node)
  ("j" neotree-next-line)
  ("J" neotree-select-down-node)
  ("k" neotree-previous-line)
  ("K" neotree-select-up-node)
  ("l" nil)
  ("L" neotree-select-next-sibling-node)
  ("r" neotree-rename-node)
  ("R" neotree-change-root)
  ("?" nil))
