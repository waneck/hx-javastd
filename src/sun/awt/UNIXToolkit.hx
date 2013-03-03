package sun.awt;
/*
* Copyright (c) 2004, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class UNIXToolkit extends sun.awt.SunToolkit
{
	/** All calls into GTK should be synchronized on this lock */
	@:public @:static @:final public static var GTK_LOCK(default, null) : Dynamic;
	
	@:overload @:public @:static public static function getDatatransferTimeout() : Int;
	
	/**
	* Returns true if the native GTK libraries are capable of being
	* loaded and are expected to work properly, false otherwise.  Note
	* that this method will not leave the native GTK libraries loaded if
	* they haven't already been loaded.  This allows, for example, Swing's
	* GTK L&F to test for the presence of native GTK support without
	* leaving the native libraries loaded.  To attempt long-term loading
	* of the native GTK libraries, use the loadGTK() method instead.
	*/
	@:overload @:public override public function isNativeGTKAvailable() : Bool;
	
	/**
	* Loads the GTK libraries, if necessary.  The first time this method
	* is called, it will attempt to load the native GTK library.  If
	* successful, it leaves the library open and returns true; otherwise,
	* the library is left closed and returns false.  On future calls to
	* this method, the status of the first attempt is returned (a simple
	* lightweight boolean check, no native calls required).
	*/
	@:overload @:public public function loadGTK() : Bool;
	
	/**
	* Overridden to handle GTK icon loading
	*/
	@:overload @:protected override private function lazilyLoadDesktopProperty(name : String) : Dynamic;
	
	/**
	* Load a native Gtk stock icon.
	*
	* @param longname a desktop property name. This contains icon name, size
	*        and orientation, e.g. <code>"gtk.icon.gtk-add.4.rtl"</code>
	* @return an <code>Image</code> for the icon, or <code>null</code> if the
	*         icon could not be loaded
	*/
	@:overload @:protected private function lazilyLoadGTKIcon(longname : String) : Dynamic;
	
	/**
	* Returns a BufferedImage which contains the Gtk icon requested.  If no
	* such icon exists or an error occurs loading the icon the result will
	* be null.
	*
	* @param filename
	* @return The icon or null if it was not found or loaded.
	*/
	@:overload @:public public function getGTKIcon(filename : String) : java.awt.image.BufferedImage;
	
	/**
	* Returns a BufferedImage which contains the Gtk stock icon requested.
	* If no such stock icon exists the result will be null.
	*
	* @param widgetType one of WidgetType values defined in GTKNativeEngine or
	* -1 for system default stock icon.
	* @param stockId String which defines the stock id of the gtk item.
	* For a complete list reference the API at www.gtk.org for StockItems.
	* @param iconSize One of the GtkIconSize values defined in GTKConstants
	* @param textDirection One of the TextDirection values defined in
	* GTKConstants
	* @param detail Render detail that is passed to the native engine (feel
	* free to pass null)
	* @return The stock icon or null if it was not found or loaded.
	*/
	@:overload @:public public function getStockIcon(widgetType : Int, stockId : String, iconSize : Int, direction : Int, detail : String) : java.awt.image.BufferedImage;
	
	/**
	* This method is used by JNI as a callback from load_stock_icon.
	* Image data is passed back to us via this method and loaded into the
	* local BufferedImage and then returned via getStockIcon.
	*
	* Do NOT call this method directly.
	*/
	@:overload @:public public function loadIconCallback(data : java.NativeArray<java.StdTypes.Int8>, width : Int, height : Int, rowStride : Int, bps : Int, channels : Int, alpha : Bool) : Void;
	
	@:overload @:public override public function sync() : Void;
	
	/*
	* This returns the value for the desktop property "awt.font.desktophints"
	* It builds this by querying the Gnome desktop properties to return
	* them as platform independent hints.
	* This requires that the Gnome properties have already been gathered.
	*/
	@:public @:static @:final public static var FONTCONFIGAAHINT(default, null) : String;
	
	@:overload @:protected override private function getDesktopAAHints() : java.awt.RenderingHints;
	
	/**
	* Returns {@code true} if the GTK+ library is compatible with the given
	* version.
	*
	* @param major
	*            The required major version.
	* @param minor
	*            The required minor version.
	* @param micro
	*            The required micro version.
	* @return {@code true} if the GTK+ library is compatible with the given
	*         version.
	*/
	@:overload @:public public function checkGtkVersion(major : Int, minor : Int, micro : Int) : Bool;
	
	
}
