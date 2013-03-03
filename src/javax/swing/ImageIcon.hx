package javax.swing;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
* An implementation of the Icon interface that paints Icons
* from Images. Images that are created from a URL, filename or byte array
* are preloaded using MediaTracker to monitor the loaded state
* of the image.
*
* <p>
* For further information and examples of using image icons, see
* <a href="http://java.sun.com/docs/books/tutorial/uiswing/misc/icon.html">How to Use Icons</a>
* in <em>The Java Tutorial.</em>
*
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*
* @author Jeff Dinkins
* @author Lynn Monsanto
*/
extern class ImageIcon implements javax.swing.Icon implements java.io.Serializable implements javax.accessibility.Accessible
{
	@:protected @:final @:static private static var component(default, null) : java.awt.Component;
	
	@:protected @:final @:static private static var tracker(default, null) : java.awt.MediaTracker;
	
	/**
	* Creates an ImageIcon from the specified file. The image will
	* be preloaded by using MediaTracker to monitor the loading state
	* of the image.
	* @param filename the name of the file containing the image
	* @param description a brief textual description of the image
	* @see #ImageIcon(String)
	*/
	@:overload @:public public function new(filename : String, description : String) : Void;
	
	/**
	* Creates an ImageIcon from the specified file. The image will
	* be preloaded by using MediaTracker to monitor the loading state
	* of the image. The specified String can be a file name or a
	* file path. When specifying a path, use the Internet-standard
	* forward-slash ("/") as a separator.
	* (The string is converted to an URL, so the forward-slash works
	* on all systems.)
	* For example, specify:
	* <pre>
	*    new ImageIcon("images/myImage.gif") </pre>
	* The description is initialized to the <code>filename</code> string.
	*
	* @param filename a String specifying a filename or path
	* @see #getDescription
	*/
	@:overload @:public public function new(filename : String) : Void;
	
	/**
	* Creates an ImageIcon from the specified URL. The image will
	* be preloaded by using MediaTracker to monitor the loaded state
	* of the image.
	* @param location the URL for the image
	* @param description a brief textual description of the image
	* @see #ImageIcon(String)
	*/
	@:overload @:public public function new(location : java.net.URL, description : String) : Void;
	
	/**
	* Creates an ImageIcon from the specified URL. The image will
	* be preloaded by using MediaTracker to monitor the loaded state
	* of the image.
	* The icon's description is initialized to be
	* a string representation of the URL.
	* @param location the URL for the image
	* @see #getDescription
	*/
	@:overload @:public public function new(location : java.net.URL) : Void;
	
	/**
	* Creates an ImageIcon from the image.
	* @param image the image
	* @param description a brief textual description of the image
	*/
	@:overload @:public public function new(image : java.awt.Image, description : String) : Void;
	
	/**
	* Creates an ImageIcon from an image object.
	* If the image has a "comment" property that is a string,
	* then the string is used as the description of this icon.
	* @param image the image
	* @see #getDescription
	* @see java.awt.Image#getProperty
	*/
	@:overload @:public public function new(image : java.awt.Image) : Void;
	
	/**
	* Creates an ImageIcon from an array of bytes which were
	* read from an image file containing a supported image format,
	* such as GIF, JPEG, or (as of 1.3) PNG.
	* Normally this array is created
	* by reading an image using Class.getResourceAsStream(), but
	* the byte array may also be statically stored in a class.
	*
	* @param  imageData an array of pixels in an image format supported
	*         by the AWT Toolkit, such as GIF, JPEG, or (as of 1.3) PNG
	* @param  description a brief textual description of the image
	* @see    java.awt.Toolkit#createImage
	*/
	@:overload @:public public function new(imageData : java.NativeArray<java.StdTypes.Int8>, description : String) : Void;
	
	/**
	* Creates an ImageIcon from an array of bytes which were
	* read from an image file containing a supported image format,
	* such as GIF, JPEG, or (as of 1.3) PNG.
	* Normally this array is created
	* by reading an image using Class.getResourceAsStream(), but
	* the byte array may also be statically stored in a class.
	* If the resulting image has a "comment" property that is a string,
	* then the string is used as the description of this icon.
	*
	* @param  imageData an array of pixels in an image format supported by
	*             the AWT Toolkit, such as GIF, JPEG, or (as of 1.3) PNG
	* @see    java.awt.Toolkit#createImage
	* @see #getDescription
	* @see java.awt.Image#getProperty
	*/
	@:overload @:public public function new(imageData : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Creates an uninitialized image icon.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Loads the image, returning only when the image is loaded.
	* @param image the image
	*/
	@:overload @:protected private function loadImage(image : java.awt.Image) : Void;
	
	/**
	* Returns the status of the image loading operation.
	* @return the loading status as defined by java.awt.MediaTracker
	* @see java.awt.MediaTracker#ABORTED
	* @see java.awt.MediaTracker#ERRORED
	* @see java.awt.MediaTracker#COMPLETE
	*/
	@:overload @:public public function getImageLoadStatus() : Int;
	
	/**
	* Returns this icon's <code>Image</code>.
	* @return the <code>Image</code> object for this <code>ImageIcon</code>
	*/
	@:overload @:public public function getImage() : java.awt.Image;
	
	/**
	* Sets the image displayed by this icon.
	* @param image the image
	*/
	@:overload @:public public function setImage(image : java.awt.Image) : Void;
	
	/**
	* Gets the description of the image.  This is meant to be a brief
	* textual description of the object.  For example, it might be
	* presented to a blind user to give an indication of the purpose
	* of the image.
	* The description may be null.
	*
	* @return a brief textual description of the image
	*/
	@:overload @:public public function getDescription() : String;
	
	/**
	* Sets the description of the image.  This is meant to be a brief
	* textual description of the object.  For example, it might be
	* presented to a blind user to give an indication of the purpose
	* of the image.
	* @param description a brief textual description of the image
	*/
	@:overload @:public public function setDescription(description : String) : Void;
	
	/**
	* Paints the icon.
	* The top-left corner of the icon is drawn at
	* the point (<code>x</code>, <code>y</code>)
	* in the coordinate space of the graphics context <code>g</code>.
	* If this icon has no image observer,
	* this method uses the <code>c</code> component
	* as the observer.
	*
	* @param c the component to be used as the observer
	*          if this icon has no image observer
	* @param g the graphics context
	* @param x the X coordinate of the icon's top-left corner
	* @param y the Y coordinate of the icon's top-left corner
	*/
	@:overload @:public @:synchronized public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	/**
	* Gets the width of the icon.
	*
	* @return the width in pixels of this icon
	*/
	@:overload @:public public function getIconWidth() : Int;
	
	/**
	* Gets the height of the icon.
	*
	* @return the height in pixels of this icon
	*/
	@:overload @:public public function getIconHeight() : Int;
	
	/**
	* Sets the image observer for the image.  Set this
	* property if the ImageIcon contains an animated GIF, so
	* the observer is notified to update its display.
	* For example:
	* <pre>
	*     icon = new ImageIcon(...)
	*     button.setIcon(icon);
	*     icon.setImageObserver(button);
	* </pre>
	*
	* @param observer the image observer
	*/
	@:overload @:public public function setImageObserver(observer : java.awt.image.ImageObserver) : Void;
	
	/**
	* Returns the image observer for the image.
	*
	* @return the image observer, which may be null
	*/
	@:overload @:public public function getImageObserver() : java.awt.image.ImageObserver;
	
	/**
	* Returns a string representation of this image.
	*
	* @return a string representing this image
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Gets the AccessibleContext associated with this ImageIcon.
	* For image icons, the AccessibleContext takes the form of an
	* AccessibleImageIcon.
	* A new AccessibleImageIcon instance is created if necessary.
	*
	* @return an AccessibleImageIcon that serves as the
	*         AccessibleContext of this ImageIcon
	* @beaninfo
	*       expert: true
	*  description: The AccessibleContext associated with this ImageIcon.
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* This class implements accessibility support for the
* <code>ImageIcon</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to image icon user-interface
* elements.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
* @since 1.3
*/
@:require(java3) @:native('javax$swing$ImageIcon$AccessibleImageIcon') extern class ImageIcon_AccessibleImageIcon extends javax.accessibility.AccessibleContext implements javax.accessibility.AccessibleIcon implements java.io.Serializable
{
	/**
	* Gets the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	* @see AccessibleRole
	*/
	@:overload @:public override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Gets the state of this object.
	*
	* @return an instance of AccessibleStateSet containing the current
	* state set of the object
	* @see AccessibleState
	*/
	@:overload @:public override public function getAccessibleStateSet() : javax.accessibility.AccessibleStateSet;
	
	/**
	* Gets the Accessible parent of this object.  If the parent of this
	* object implements Accessible, this method should simply return
	* getParent().
	*
	* @return the Accessible parent of this object -- can be null if this
	* object does not have an Accessible parent
	*/
	@:overload @:public override public function getAccessibleParent() : javax.accessibility.Accessible;
	
	/**
	* Gets the index of this object in its accessible parent.
	*
	* @return the index of this object in its parent; -1 if this
	* object does not have an accessible parent.
	* @see #getAccessibleParent
	*/
	@:overload @:public override public function getAccessibleIndexInParent() : Int;
	
	/**
	* Returns the number of accessible children in the object.  If all
	* of the children of this object implement Accessible, than this
	* method should return the number of children of this object.
	*
	* @return the number of accessible children in the object.
	*/
	@:overload @:public override public function getAccessibleChildrenCount() : Int;
	
	/**
	* Returns the nth Accessible child of the object.
	*
	* @param i zero-based index of child
	* @return the nth Accessible child of the object
	*/
	@:overload @:public override public function getAccessibleChild(i : Int) : javax.accessibility.Accessible;
	
	/**
	* Returns the locale of this object.
	*
	* @return the locale of this object
	*/
	@:overload @:public override public function getLocale() : java.util.Locale;
	
	/**
	* Gets the description of the icon.  This is meant to be a brief
	* textual description of the object.  For example, it might be
	* presented to a blind user to give an indication of the purpose
	* of the icon.
	*
	* @return the description of the icon
	*/
	@:overload @:public public function getAccessibleIconDescription() : String;
	
	/**
	* Sets the description of the icon.  This is meant to be a brief
	* textual description of the object.  For example, it might be
	* presented to a blind user to give an indication of the purpose
	* of the icon.
	*
	* @param description the description of the icon
	*/
	@:overload @:public public function setAccessibleIconDescription(description : String) : Void;
	
	/**
	* Gets the height of the icon.
	*
	* @return the height of the icon
	*/
	@:overload @:public public function getAccessibleIconHeight() : Int;
	
	/**
	* Gets the width of the icon.
	*
	* @return the width of the icon
	*/
	@:overload @:public public function getAccessibleIconWidth() : Int;
	
	
}
