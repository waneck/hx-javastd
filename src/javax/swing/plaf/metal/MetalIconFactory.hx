package javax.swing.plaf.metal;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class MetalIconFactory implements java.io.Serializable
{
	@:public @:static @:final public static var DARK(default, null) : Bool;
	
	@:public @:static @:final public static var LIGHT(default, null) : Bool;
	
	@:overload @:public @:static public static function getFileChooserDetailViewIcon() : javax.swing.Icon;
	
	@:overload @:public @:static public static function getFileChooserHomeFolderIcon() : javax.swing.Icon;
	
	@:overload @:public @:static public static function getFileChooserListViewIcon() : javax.swing.Icon;
	
	@:overload @:public @:static public static function getFileChooserNewFolderIcon() : javax.swing.Icon;
	
	@:overload @:public @:static public static function getFileChooserUpFolderIcon() : javax.swing.Icon;
	
	@:overload @:public @:static public static function getInternalFrameAltMaximizeIcon(size : Int) : javax.swing.Icon;
	
	@:overload @:public @:static public static function getInternalFrameCloseIcon(size : Int) : javax.swing.Icon;
	
	@:overload @:public @:static public static function getInternalFrameDefaultMenuIcon() : javax.swing.Icon;
	
	@:overload @:public @:static public static function getInternalFrameMaximizeIcon(size : Int) : javax.swing.Icon;
	
	@:overload @:public @:static public static function getInternalFrameMinimizeIcon(size : Int) : javax.swing.Icon;
	
	@:overload @:public @:static public static function getRadioButtonIcon() : javax.swing.Icon;
	
	/**
	* Returns a checkbox icon.
	* @since 1.3
	*/
	@:require(java3) @:overload @:public @:static public static function getCheckBoxIcon() : javax.swing.Icon;
	
	@:overload @:public @:static public static function getTreeComputerIcon() : javax.swing.Icon;
	
	@:overload @:public @:static public static function getTreeFloppyDriveIcon() : javax.swing.Icon;
	
	@:overload @:public @:static public static function getTreeFolderIcon() : javax.swing.Icon;
	
	@:overload @:public @:static public static function getTreeHardDriveIcon() : javax.swing.Icon;
	
	@:overload @:public @:static public static function getTreeLeafIcon() : javax.swing.Icon;
	
	@:overload @:public @:static public static function getTreeControlIcon(isCollapsed : Bool) : javax.swing.Icon;
	
	@:overload @:public @:static public static function getMenuArrowIcon() : javax.swing.Icon;
	
	/**
	* Returns an icon to be used by <code>JCheckBoxMenuItem</code>.
	*
	* @return the default icon for check box menu items,
	*         or <code>null</code> if no default exists
	*/
	@:overload @:public @:static public static function getMenuItemCheckIcon() : javax.swing.Icon;
	
	@:overload @:public @:static public static function getMenuItemArrowIcon() : javax.swing.Icon;
	
	@:overload @:public @:static public static function getCheckBoxMenuItemIcon() : javax.swing.Icon;
	
	@:overload @:public @:static public static function getRadioButtonMenuItemIcon() : javax.swing.Icon;
	
	@:overload @:public @:static public static function getHorizontalSliderThumbIcon() : javax.swing.Icon;
	
	@:overload @:public @:static public static function getVerticalSliderThumbIcon() : javax.swing.Icon;
	
	
}
@:native('javax$swing$plaf$metal$MetalIconFactory$FileChooserDetailViewIcon') @:internal extern class MetalIconFactory_FileChooserDetailViewIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
@:native('javax$swing$plaf$metal$MetalIconFactory$FileChooserHomeFolderIcon') @:internal extern class MetalIconFactory_FileChooserHomeFolderIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
@:native('javax$swing$plaf$metal$MetalIconFactory$FileChooserListViewIcon') @:internal extern class MetalIconFactory_FileChooserListViewIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
@:native('javax$swing$plaf$metal$MetalIconFactory$FileChooserNewFolderIcon') @:internal extern class MetalIconFactory_FileChooserNewFolderIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
@:native('javax$swing$plaf$metal$MetalIconFactory$FileChooserUpFolderIcon') @:internal extern class MetalIconFactory_FileChooserUpFolderIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
/**
* Defines an icon for Palette close
* @since 1.3
*/
@:require(java3) @:native('javax$swing$plaf$metal$MetalIconFactory$PaletteCloseIcon') extern class MetalIconFactory_PaletteCloseIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
@:native('javax$swing$plaf$metal$MetalIconFactory$InternalFrameCloseIcon') @:internal extern class MetalIconFactory_InternalFrameCloseIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload @:public public function new(size : Int) : Void;
	
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
@:native('javax$swing$plaf$metal$MetalIconFactory$InternalFrameAltMaximizeIcon') @:internal extern class MetalIconFactory_InternalFrameAltMaximizeIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload @:public public function new(size : Int) : Void;
	
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
@:native('javax$swing$plaf$metal$MetalIconFactory$InternalFrameDefaultMenuIcon') @:internal extern class MetalIconFactory_InternalFrameDefaultMenuIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
@:native('javax$swing$plaf$metal$MetalIconFactory$InternalFrameMaximizeIcon') @:internal extern class MetalIconFactory_InternalFrameMaximizeIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:protected private var iconSize : Int;
	
	@:overload @:public public function new(size : Int) : Void;
	
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
@:native('javax$swing$plaf$metal$MetalIconFactory$InternalFrameMinimizeIcon') @:internal extern class MetalIconFactory_InternalFrameMinimizeIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload @:public public function new(size : Int) : Void;
	
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
@:native('javax$swing$plaf$metal$MetalIconFactory$CheckBoxIcon') @:internal extern class MetalIconFactory_CheckBoxIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload @:protected private function getControlSize() : Int;
	
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:protected private function drawCheck(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
@:native('javax$swing$plaf$metal$MetalIconFactory$RadioButtonIcon') @:internal extern class MetalIconFactory_RadioButtonIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload @:public public function paintOceanIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
@:native('javax$swing$plaf$metal$MetalIconFactory$TreeComputerIcon') @:internal extern class MetalIconFactory_TreeComputerIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
@:native('javax$swing$plaf$metal$MetalIconFactory$TreeHardDriveIcon') @:internal extern class MetalIconFactory_TreeHardDriveIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
@:native('javax$swing$plaf$metal$MetalIconFactory$TreeFloppyDriveIcon') @:internal extern class MetalIconFactory_TreeFloppyDriveIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
/**
* Utility class for caching icon images.  This is necessary because
* we need a new image whenever we are rendering into a new
* GraphicsConfiguration, but we do not want to keep recreating icon
* images for GC's that we have already seen (for example,
* dragging a window back and forth between monitors on a multimon
* system, or drawing an icon to different Components that have different
* GC's).
* So now whenever we create a new icon image for a given GC, we
* cache that image with the GC for later retrieval.
*/
@:native('javax$swing$plaf$metal$MetalIconFactory$ImageCacher') @:internal extern class MetalIconFactory_ImageCacher
{
	
}
@:native('javax$swing$plaf$metal$MetalIconFactory$ImageCacher$ImageGcPair') @:internal extern class MetalIconFactory_ImageCacher_ImageGcPair
{
	
}
/**
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*/
@:native('javax$swing$plaf$metal$MetalIconFactory$FolderIcon16') extern class MetalIconFactory_FolderIcon16 implements javax.swing.Icon implements java.io.Serializable
{
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getShift() : Int;
	
	@:overload @:public public function getAdditionalHeight() : Int;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
/**
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*/
@:native('javax$swing$plaf$metal$MetalIconFactory$TreeFolderIcon') extern class MetalIconFactory_TreeFolderIcon extends javax.swing.plaf.metal.MetalIconFactory.MetalIconFactory_FolderIcon16
{
	@:overload @:public override public function getShift() : Int;
	
	@:overload @:public override public function getAdditionalHeight() : Int;
	
	
}
/**
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*/
@:native('javax$swing$plaf$metal$MetalIconFactory$FileIcon16') extern class MetalIconFactory_FileIcon16 implements javax.swing.Icon implements java.io.Serializable
{
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getShift() : Int;
	
	@:overload @:public public function getAdditionalHeight() : Int;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
@:native('javax$swing$plaf$metal$MetalIconFactory$TreeLeafIcon') extern class MetalIconFactory_TreeLeafIcon extends javax.swing.plaf.metal.MetalIconFactory.MetalIconFactory_FileIcon16
{
	@:overload @:public override public function getShift() : Int;
	
	@:overload @:public override public function getAdditionalHeight() : Int;
	
	
}
/**
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*/
@:native('javax$swing$plaf$metal$MetalIconFactory$TreeControlIcon') extern class MetalIconFactory_TreeControlIcon implements javax.swing.Icon implements java.io.Serializable
{
	@:protected private var isLight : Bool;
	
	@:overload @:public public function new(isCollapsed : Bool) : Void;
	
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function paintMe(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
@:native('javax$swing$plaf$metal$MetalIconFactory$MenuArrowIcon') @:internal extern class MetalIconFactory_MenuArrowIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
@:native('javax$swing$plaf$metal$MetalIconFactory$MenuItemArrowIcon') @:internal extern class MetalIconFactory_MenuItemArrowIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
@:native('javax$swing$plaf$metal$MetalIconFactory$CheckBoxMenuItemIcon') @:internal extern class MetalIconFactory_CheckBoxMenuItemIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload @:public public function paintOceanIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
@:native('javax$swing$plaf$metal$MetalIconFactory$RadioButtonMenuItemIcon') @:internal extern class MetalIconFactory_RadioButtonMenuItemIcon implements javax.swing.Icon implements javax.swing.plaf.UIResource implements java.io.Serializable
{
	@:overload @:public public function paintOceanIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
@:native('javax$swing$plaf$metal$MetalIconFactory$VerticalSliderThumbIcon') @:internal extern class MetalIconFactory_VerticalSliderThumbIcon implements javax.swing.Icon implements java.io.Serializable implements javax.swing.plaf.UIResource
{
	@:protected @:static private static var controlBumps : javax.swing.plaf.metal.MetalBumps;
	
	@:protected @:static private static var primaryBumps : javax.swing.plaf.metal.MetalBumps;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
@:native('javax$swing$plaf$metal$MetalIconFactory$HorizontalSliderThumbIcon') @:internal extern class MetalIconFactory_HorizontalSliderThumbIcon implements javax.swing.Icon implements java.io.Serializable implements javax.swing.plaf.UIResource
{
	@:protected @:static private static var controlBumps : javax.swing.plaf.metal.MetalBumps;
	
	@:protected @:static private static var primaryBumps : javax.swing.plaf.metal.MetalBumps;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
@:native('javax$swing$plaf$metal$MetalIconFactory$OceanVerticalSliderThumbIcon') @:internal extern class MetalIconFactory_OceanVerticalSliderThumbIcon extends sun.swing.CachedPainter implements javax.swing.Icon implements java.io.Serializable implements javax.swing.plaf.UIResource
{
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:protected override private function paintToImage(c : java.awt.Component, image : java.awt.Image, g2 : java.awt.Graphics, w : Int, h : Int, args : java.NativeArray<Dynamic>) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	@:overload @:protected override private function createImage(c : java.awt.Component, w : Int, h : Int, config : java.awt.GraphicsConfiguration, args : java.NativeArray<Dynamic>) : java.awt.Image;
	
	
}
@:native('javax$swing$plaf$metal$MetalIconFactory$OceanHorizontalSliderThumbIcon') @:internal extern class MetalIconFactory_OceanHorizontalSliderThumbIcon extends sun.swing.CachedPainter implements javax.swing.Icon implements java.io.Serializable implements javax.swing.plaf.UIResource
{
	@:overload @:public public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload @:protected override private function createImage(c : java.awt.Component, w : Int, h : Int, config : java.awt.GraphicsConfiguration, args : java.NativeArray<Dynamic>) : java.awt.Image;
	
	@:overload @:protected override private function paintToImage(c : java.awt.Component, image : java.awt.Image, g2 : java.awt.Graphics, w : Int, h : Int, args : java.NativeArray<Dynamic>) : Void;
	
	@:overload @:public public function getIconWidth() : Int;
	
	@:overload @:public public function getIconHeight() : Int;
	
	
}
