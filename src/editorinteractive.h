/*
 * Copyright (C) 2002 by the Widelands Development Team
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 *
 */

#ifndef __S__EDITORINTERACTIVE_H
#define __S__EDITORINTERACTIVE_H

#include "mapview.h"
#include "interactive_base.h"

class Editor;
class MiniMapView;
class Editor_Tool;

/*
 * This is the EditorInteractive. It is like the InteractivePlayer class,
 * but for the Editor instead of the game
 */
class Editor_Interactive : public Interactive_Base {
   public:
      Editor_Interactive(Editor*);
      ~Editor_Interactive();

      inline Editor* get_editor(void) { return m_editor; }

      // leaf functions from base class
      void recalc_overlay(FCoords fc);
      void start();

      // gets called when a field is clicked
      void field_clicked();
      
      struct Editor_Tools {
         int current_tool;
         std::vector<Editor_Tool*> tools;
      };
   private:
      static const int PANEL_HEIGHT=100;

      void exit_game_btn();
      void toggle_buildhelp();
      void toggle_minimap();
      void tool_menu_btn();
      void toolsize_menu_btn();

   
      // Tool
      Editor_Tools tools;

      // UI ownings
      Editor* m_editor;
      UniqueWindow m_toolmenu;
      UniqueWindow m_minimap;
      UniqueWindow m_toolsizemenu;
};
#endif // __S__EDITOR_H
