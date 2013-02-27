package javax.swing;
/*
* Copyright (c) 1997, 1999, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
/**
* Constants used with the JScrollPane component.
*
* @author Hans Muller
*/
extern interface ScrollPaneConstants
{
	/**
	* Identifies a "viewport" or display area, within which
	* scrolled contents are visible.
	*/
	public var VIEWPORT : String;
	
	/** Identifies a vertical scrollbar. */
	public var VERTICAL_SCROLLBAR : String;
	
	/** Identifies a horizonal scrollbar. */
	public var HORIZONTAL_SCROLLBAR : String;
	
	/**
	* Identifies the area along the left side of the viewport between the
	* upper left corner and the lower left corner.
	*/
	public var ROW_HEADER : String;
	
	/**
	* Identifies the area at the top the viewport between the
	* upper left corner and the upper right corner.
	*/
	public var COLUMN_HEADER : String;
	
	/** Identifies the lower left corner of the viewport. */
	public var LOWER_LEFT_CORNER : String;
	
	/** Identifies the lower right corner of the viewport. */
	public var LOWER_RIGHT_CORNER : String;
	
	/** Identifies the upper left corner of the viewport. */
	public var UPPER_LEFT_CORNER : String;
	
	/** Identifies the upper right corner of the viewport. */
	public var UPPER_RIGHT_CORNER : String;
	
	/** Identifies the lower leading edge corner of the viewport. The leading edge
	* is determined relative to the Scroll Pane's ComponentOrientation property.
	*/
	public var LOWER_LEADING_CORNER : String;
	
	/** Identifies the lower trailing edge corner of the viewport. The trailing edge
	* is determined relative to the Scroll Pane's ComponentOrientation property.
	*/
	public var LOWER_TRAILING_CORNER : String;
	
	/** Identifies the upper leading edge corner of the viewport.  The leading edge
	* is determined relative to the Scroll Pane's ComponentOrientation property.
	*/
	public var UPPER_LEADING_CORNER : String;
	
	/** Identifies the upper trailing edge corner of the viewport. The trailing edge
	* is determined relative to the Scroll Pane's ComponentOrientation property.
	*/
	public var UPPER_TRAILING_CORNER : String;
	
	/** Identifies the vertical scroll bar policy property. */
	public var VERTICAL_SCROLLBAR_POLICY : String;
	
	/** Identifies the horizontal scroll bar policy property. */
	public var HORIZONTAL_SCROLLBAR_POLICY : String;
	
	/**
	* Used to set the vertical scroll bar policy so that
	* vertical scrollbars are displayed only when needed.
	*/
	public var VERTICAL_SCROLLBAR_AS_NEEDED : Int;
	
	/**
	* Used to set the vertical scroll bar policy so that
	* vertical scrollbars are never displayed.
	*/
	public var VERTICAL_SCROLLBAR_NEVER : Int;
	
	/**
	* Used to set the vertical scroll bar policy so that
	* vertical scrollbars are always displayed.
	*/
	public var VERTICAL_SCROLLBAR_ALWAYS : Int;
	
	/**
	* Used to set the horizontal scroll bar policy so that
	* horizontal scrollbars are displayed only when needed.
	*/
	public var HORIZONTAL_SCROLLBAR_AS_NEEDED : Int;
	
	/**
	* Used to set the horizontal scroll bar policy so that
	* horizontal scrollbars are never displayed.
	*/
	public var HORIZONTAL_SCROLLBAR_NEVER : Int;
	
	/**
	* Used to set the horizontal scroll bar policy so that
	* horizontal scrollbars are always displayed.
	*/
	public var HORIZONTAL_SCROLLBAR_ALWAYS : Int;
	
	
}
