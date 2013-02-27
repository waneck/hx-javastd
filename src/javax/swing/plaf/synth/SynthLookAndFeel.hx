package javax.swing.plaf.synth;
/*
* Copyright (c) 2002, 2010, Oracle and/or its affiliates. All rights reserved.
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
* SynthLookAndFeel provides the basis for creating a customized look and
* feel. SynthLookAndFeel does not directly provide a look, all painting is
* delegated.
* You need to either provide a configuration file, by way of the
* {@link #load} method, or provide your own {@link SynthStyleFactory}
* to {@link #setStyleFactory}. Refer to the
* <a href="package-summary.html">package summary</a> for an example of
* loading a file, and {@link javax.swing.plaf.synth.SynthStyleFactory} for
* an example of providing your own <code>SynthStyleFactory</code> to
* <code>setStyleFactory</code>.
* <p>
* <strong>Warning:</strong>
* This class implements {@link Serializable} as a side effect of it
* extending {@link BasicLookAndFeel}. It is not intended to be serialized.
* An attempt to serialize it will
* result in {@link NotSerializableException}.
*
* @serial exclude
* @since 1.5
* @author Scott Violet
*/
@:require(java5) extern class SynthLookAndFeel extends javax.swing.plaf.basic.BasicLookAndFeel
{
	/**
	* Sets the SynthStyleFactory that the UI classes provided by
	* synth will use to obtain a SynthStyle.
	*
	* @param cache SynthStyleFactory the UIs should use.
	*/
	@:overload public static function setStyleFactory(cache : javax.swing.plaf.synth.SynthStyleFactory) : Void;
	
	/**
	* Returns the current SynthStyleFactory.
	*
	* @return SynthStyleFactory
	*/
	@:overload public static function getStyleFactory() : javax.swing.plaf.synth.SynthStyleFactory;
	
	/**
	* Gets a SynthStyle for the specified region of the specified component.
	* This is not for general consumption, only custom UIs should call this
	* method.
	*
	* @param c JComponent to get the SynthStyle for
	* @param region Identifies the region of the specified component
	* @return SynthStyle to use.
	*/
	@:overload public static function getStyle(c : javax.swing.JComponent, region : javax.swing.plaf.synth.Region) : javax.swing.plaf.synth.SynthStyle;
	
	/**
	* Updates the style associated with <code>c</code>, and all its children.
	* This is a lighter version of
	* <code>SwingUtilities.updateComponentTreeUI</code>.
	*
	* @param c Component to update style for.
	*/
	@:overload public static function updateStyles(c : java.awt.Component) : Void;
	
	/**
	* Returns the Region for the JComponent <code>c</code>.
	*
	* @param c JComponent to fetch the Region for
	* @return Region corresponding to <code>c</code>
	*/
	@:overload public static function getRegion(c : javax.swing.JComponent) : javax.swing.plaf.synth.Region;
	
	/**
	* Creates the Synth look and feel <code>ComponentUI</code> for
	* the passed in <code>JComponent</code>.
	*
	* @param c JComponent to create the <code>ComponentUI</code> for
	* @return ComponentUI to use for <code>c</code>
	*/
	@:overload public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* Creates a SynthLookAndFeel.
	* <p>
	* For the returned <code>SynthLookAndFeel</code> to be useful you need to
	* invoke <code>load</code> to specify the set of
	* <code>SynthStyle</code>s, or invoke <code>setStyleFactory</code>.
	*
	* @see #load
	* @see #setStyleFactory
	*/
	@:overload public function new() : Void;
	
	/**
	* Loads the set of <code>SynthStyle</code>s that will be used by
	* this <code>SynthLookAndFeel</code>. <code>resourceBase</code> is
	* used to resolve any path based resources, for example an
	* <code>Image</code> would be resolved by
	* <code>resourceBase.getResource(path)</code>. Refer to
	* <a href="doc-files/synthFileFormat.html">Synth File Format</a>
	* for more information.
	*
	* @param input InputStream to load from
	* @param resourceBase used to resolve any images or other resources
	* @throws ParseException if there is an error in parsing
	* @throws IllegalArgumentException if input or resourceBase is <code>null</code>
	*/
	@:overload public function load(input : java.io.InputStream, resourceBase : Class<Dynamic>) : Void;
	
	/**
	* Loads the set of <code>SynthStyle</code>s that will be used by
	* this <code>SynthLookAndFeel</code>. Path based resources are resolved
	* relatively to the specified <code>URL</code> of the style. For example
	* an <code>Image</code> would be resolved by
	* <code>new URL(synthFile, path)</code>. Refer to
	* <a href="doc-files/synthFileFormat.html">Synth File Format</a> for more
	* information.
	*
	* @param url the <code>URL</code> to load the set of
	*     <code>SynthStyle</code> from
	* @throws ParseException if there is an error in parsing
	* @throws IllegalArgumentException if synthSet is <code>null</code>
	* @throws IOException if synthSet cannot be opened as an <code>InputStream</code>
	* @since 1.6
	*/
	@:require(java6) @:overload public function load(url : java.net.URL) : Void;
	
	/**
	* Called by UIManager when this look and feel is installed.
	*/
	@:overload override public function initialize() : Void;
	
	/**
	* Called by UIManager when this look and feel is uninstalled.
	*/
	@:overload override public function uninitialize() : Void;
	
	/**
	* Returns the defaults for this SynthLookAndFeel.
	*
	* @return Defaults table.
	*/
	@:overload override public function getDefaults() : javax.swing.UIDefaults;
	
	/**
	* Returns true, SynthLookAndFeel is always supported.
	*
	* @return true.
	*/
	@:overload override public function isSupportedLookAndFeel() : Bool;
	
	/**
	* Returns false, SynthLookAndFeel is not a native look and feel.
	*
	* @return false
	*/
	@:overload override public function isNativeLookAndFeel() : Bool;
	
	/**
	* Returns a textual description of SynthLookAndFeel.
	*
	* @return textual description of synth.
	*/
	@:overload override public function getDescription() : String;
	
	/**
	* Return a short string that identifies this look and feel.
	*
	* @return a short string identifying this look and feel.
	*/
	@:overload override public function getName() : String;
	
	/**
	* Return a string that identifies this look and feel.
	*
	* @return a short string identifying this look and feel.
	*/
	@:overload override public function getID() : String;
	
	/**
	* Returns whether or not the UIs should update their
	* <code>SynthStyles</code> from the <code>SynthStyleFactory</code>
	* when the ancestor of the <code>JComponent</code> changes. A subclass
	* that provided a <code>SynthStyleFactory</code> that based the
	* return value from <code>getStyle</code> off the containment hierarchy
	* would override this method to return true.
	*
	* @return whether or not the UIs should update their
	* <code>SynthStyles</code> from the <code>SynthStyleFactory</code>
	* when the ancestor changed.
	*/
	@:overload public function shouldUpdateStyleOnAncestorChanged() : Bool;
	
	/**
	* Returns whether or not the UIs should update their styles when a
	* particular event occurs.
	*
	* @param ev a {@code PropertyChangeEvent}
	* @return whether or not the UIs should update their styles
	* @since 1.7
	*/
	@:require(java7) @:overload private function shouldUpdateStyleOnEvent(ev : java.beans.PropertyChangeEvent) : Bool;
	
	
}
@:native('javax$swing$plaf$synth$SynthLookAndFeel$AATextListener') @:internal extern class SynthLookAndFeel_AATextListener extends java.lang.ref.WeakReference<javax.swing.LookAndFeel> implements java.beans.PropertyChangeListener
{
	@:overload public function propertyChange(pce : java.beans.PropertyChangeEvent) : Void;
	
	@:overload private function updateUI() : Void;
	
	
}
@:native('javax$swing$plaf$synth$SynthLookAndFeel$Handler') @:internal extern class SynthLookAndFeel_Handler implements java.beans.PropertyChangeListener
{
	@:overload public function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	
}
