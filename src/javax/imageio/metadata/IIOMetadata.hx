package javax.imageio.metadata;
/*
* Copyright (c) 2000, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class IIOMetadata
{
	/**
	* A boolean indicating whether the concrete subclass supports the
	* standard metadata format, set via the constructor.
	*/
	@:protected private var standardFormatSupported : Bool;
	
	/**
	* The name of the native metadata format for this object,
	* initialized to <code>null</code> and set via the constructor.
	*/
	@:protected private var nativeMetadataFormatName : String;
	
	/**
	* The name of the class implementing <code>IIOMetadataFormat</code>
	* and representing the native metadata format, initialized to
	* <code>null</code> and set via the constructor.
	*/
	@:protected private var nativeMetadataFormatClassName : String;
	
	/**
	* An array of names of formats, other than the standard and
	* native formats, that are supported by this plug-in,
	* initialized to <code>null</code> and set via the constructor.
	*/
	@:protected private var extraMetadataFormatNames : java.NativeArray<String>;
	
	/**
	* An array of names of classes implementing <code>IIOMetadataFormat</code>
	* and representing the metadata formats, other than the standard and
	* native formats, that are supported by this plug-in,
	* initialized to <code>null</code> and set via the constructor.
	*/
	@:protected private var extraMetadataFormatClassNames : java.NativeArray<String>;
	
	/**
	* An <code>IIOMetadataController</code> that is suggested for use
	* as the controller for this <code>IIOMetadata</code> object.  It
	* may be retrieved via <code>getDefaultController</code>.  To
	* install the default controller, call
	* <code>setController(getDefaultController())</code>.  This
	* instance variable should be set by subclasses that choose to
	* provide their own default controller, usually a GUI, for
	* setting parameters.
	*
	* @see IIOMetadataController
	* @see #getDefaultController
	*/
	@:protected private var defaultController : javax.imageio.metadata.IIOMetadataController;
	
	/**
	* The <code>IIOMetadataController</code> that will be
	* used to provide settings for this <code>IIOMetadata</code>
	* object when the <code>activateController</code> method
	* is called.  This value overrides any default controller,
	* even when <code>null</code>.
	*
	* @see IIOMetadataController
	* @see #setController(IIOMetadataController)
	* @see #hasController()
	* @see #activateController()
	*/
	@:protected private var controller : javax.imageio.metadata.IIOMetadataController;
	
	/**
	* Constructs an empty <code>IIOMetadata</code> object.  The
	* subclass is responsible for suppying values for all protected
	* instance variables that will allow any non-overridden default
	* implemtations of methods to satisfy their contracts.  For example,
	* <code>extraMetadataFormatNames</code> should not have length 0.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Constructs an <code>IIOMetadata</code> object with the given
	* format names and format class names, as well as a boolean
	* indicating whether the standard format is supported.
	*
	* <p> This constructor does not attempt to check the class names
	* for validity.  Invalid class names may cause exceptions in
	* subsequent calls to <code>getMetadataFormat</code>.
	*
	* @param standardMetadataFormatSupported <code>true</code> if
	* this object can return or accept a DOM tree using the standard
	* metadata format.
	* @param nativeMetadataFormatName the name of the native metadata
	* format, as a <code>String</code>, or <code>null</code> if there
	* is no native format.
	* @param nativeMetadataFormatClassName the name of the class of
	* the native metadata format, or <code>null</code> if there is
	* no native format.
	* @param extraMetadataFormatNames an array of <code>String</code>s
	* indicating additional formats supported by this object, or
	* <code>null</code> if there are none.
	* @param extraMetadataFormatClassNames an array of <code>String</code>s
	* indicating the class names of any additional formats supported by
	* this object, or <code>null</code> if there are none.
	*
	* @exception IllegalArgumentException if
	* <code>extraMetadataFormatNames</code> has length 0.
	* @exception IllegalArgumentException if
	* <code>extraMetadataFormatNames</code> and
	* <code>extraMetadataFormatClassNames</code> are neither both
	* <code>null</code>, nor of the same length.
	*/
	@:overload @:protected private function new(standardMetadataFormatSupported : Bool, nativeMetadataFormatName : String, nativeMetadataFormatClassName : String, extraMetadataFormatNames : java.NativeArray<String>, extraMetadataFormatClassNames : java.NativeArray<String>) : Void;
	
	/**
	* Returns <code>true</code> if the standard metadata format is
	* supported by <code>getMetadataFormat</code>,
	* <code>getAsTree</code>, <code>setFromTree</code>, and
	* <code>mergeTree</code>.
	*
	* <p> The default implementation returns the value of the
	* <code>standardFormatSupported</code> instance variable.
	*
	* @return <code>true</code> if the standard metadata format
	* is supported.
	*
	* @see #getAsTree
	* @see #setFromTree
	* @see #mergeTree
	* @see #getMetadataFormat
	*/
	@:overload @:public public function isStandardMetadataFormatSupported() : Bool;
	
	/**
	* Returns <code>true</code> if this object does not support the
	* <code>mergeTree</code>, <code>setFromTree</code>, and
	* <code>reset</code> methods.
	*
	* @return true if this <code>IIOMetadata</code> object cannot be
	* modified.
	*/
	@:overload @:public @:abstract public function isReadOnly() : Bool;
	
	/**
	* Returns the name of the "native" metadata format for this
	* plug-in, which typically allows for lossless encoding and
	* transmission of the metadata stored in the format handled by
	* this plug-in.  If no such format is supported,
	* <code>null</code>will be returned.
	*
	* <p> The structure and contents of the "native" metadata format
	* are defined by the plug-in that created this
	* <code>IIOMetadata</code> object.  Plug-ins for simple formats
	* will usually create a dummy node for the root, and then a
	* series of child nodes representing individual tags, chunks, or
	* keyword/value pairs.  A plug-in may choose whether or not to
	* document its native format.
	*
	* <p> The default implementation returns the value of the
	* <code>nativeMetadataFormatName</code> instance variable.
	*
	* @return the name of the native format, or <code>null</code>.
	*
	* @see #getExtraMetadataFormatNames
	* @see #getMetadataFormatNames
	*/
	@:overload @:public public function getNativeMetadataFormatName() : String;
	
	/**
	* Returns an array of <code>String</code>s containing the names
	* of additional metadata formats, other than the native and standard
	* formats, recognized by this plug-in's
	* <code>getAsTree</code>, <code>setFromTree</code>, and
	* <code>mergeTree</code> methods.  If there are no such additional
	* formats, <code>null</code> is returned.
	*
	* <p> The default implementation returns a clone of the
	* <code>extraMetadataFormatNames</code> instance variable.
	*
	* @return an array of <code>String</code>s with length at least
	* 1, or <code>null</code>.
	*
	* @see #getAsTree
	* @see #setFromTree
	* @see #mergeTree
	* @see #getNativeMetadataFormatName
	* @see #getMetadataFormatNames
	*/
	@:overload @:public public function getExtraMetadataFormatNames() : java.NativeArray<String>;
	
	/**
	* Returns an array of <code>String</code>s containing the names
	* of all metadata formats, including the native and standard
	* formats, recognized by this plug-in's <code>getAsTree</code>,
	* <code>setFromTree</code>, and <code>mergeTree</code> methods.
	* If there are no such formats, <code>null</code> is returned.
	*
	* <p> The default implementation calls
	* <code>getNativeMetadataFormatName</code>,
	* <code>isStandardMetadataFormatSupported</code>, and
	* <code>getExtraMetadataFormatNames</code> and returns the
	* combined results.
	*
	* @return an array of <code>String</code>s.
	*
	* @see #getNativeMetadataFormatName
	* @see #isStandardMetadataFormatSupported
	* @see #getExtraMetadataFormatNames
	*/
	@:overload @:public public function getMetadataFormatNames() : java.NativeArray<String>;
	
	/**
	* Returns an <code>IIOMetadataFormat</code> object describing the
	* given metadata format, or <code>null</code> if no description
	* is available.  The supplied name must be one of those returned
	* by <code>getMetadataFormatNames</code> (<i>i.e.</i>, either the
	* native format name, the standard format name, or one of those
	* returned by <code>getExtraMetadataFormatNames</code>).
	*
	* <p> The default implementation checks the name against the
	* global standard metadata format name, and returns that format
	* if it is supported.  Otherwise, it checks against the native
	* format names followed by any additional format names.  If a
	* match is found, it retrieves the name of the
	* <code>IIOMetadataFormat</code> class from
	* <code>nativeMetadataFormatClassName</code> or
	* <code>extraMetadataFormatClassNames</code> as appropriate, and
	* constructs an instance of that class using its
	* <code>getInstance</code> method.
	*
	* @param formatName the desired metadata format.
	*
	* @return an <code>IIOMetadataFormat</code> object.
	*
	* @exception IllegalArgumentException if <code>formatName</code>
	* is <code>null</code> or is not one of the names recognized by
	* the plug-in.
	* @exception IllegalStateException if the class corresponding to
	* the format name cannot be loaded.
	*/
	@:overload @:public public function getMetadataFormat(formatName : String) : javax.imageio.metadata.IIOMetadataFormat;
	
	/**
	* Returns an XML DOM <code>Node</code> object that represents the
	* root of a tree of metadata contained within this object
	* according to the conventions defined by a given metadata
	* format.
	*
	* <p> The names of the available metadata formats may be queried
	* using the <code>getMetadataFormatNames</code> method.
	*
	* @param formatName the desired metadata format.
	*
	* @return an XML DOM <code>Node</code> object forming the
	* root of a tree.
	*
	* @exception IllegalArgumentException if <code>formatName</code>
	* is <code>null</code> or is not one of the names returned by
	* <code>getMetadataFormatNames</code>.
	*
	* @see #getMetadataFormatNames
	* @see #setFromTree
	* @see #mergeTree
	*/
	@:overload @:public @:abstract public function getAsTree(formatName : String) : org.w3c.dom.Node;
	
	/**
	* Alters the internal state of this <code>IIOMetadata</code>
	* object from a tree of XML DOM <code>Node</code>s whose syntax
	* is defined by the given metadata format.  The previous state is
	* altered only as necessary to accomodate the nodes that are
	* present in the given tree.  If the tree structure or contents
	* are invalid, an <code>IIOInvalidTreeException</code> will be
	* thrown.
	*
	* <p> As the semantics of how a tree or subtree may be merged with
	* another tree are completely format-specific, plug-in authors may
	* implement this method in whatever manner is most appropriate for
	* the format, including simply replacing all existing state with the
	* contents of the given tree.
	*
	* @param formatName the desired metadata format.
	* @param root an XML DOM <code>Node</code> object forming the
	* root of a tree.
	*
	* @exception IllegalStateException if this object is read-only.
	* @exception IllegalArgumentException if <code>formatName</code>
	* is <code>null</code> or is not one of the names returned by
	* <code>getMetadataFormatNames</code>.
	* @exception IllegalArgumentException if <code>root</code> is
	* <code>null</code>.
	* @exception IIOInvalidTreeException if the tree cannot be parsed
	* successfully using the rules of the given format.
	*
	* @see #getMetadataFormatNames
	* @see #getAsTree
	* @see #setFromTree
	*/
	@:overload @:public @:abstract public function mergeTree(formatName : String, root : org.w3c.dom.Node) : Void;
	
	/**
	* Returns an <code>IIOMetadataNode</code> representing the chroma
	* information of the standard <code>javax_imageio_1.0</code>
	* metadata format, or <code>null</code> if no such information is
	* available.  This method is intended to be called by the utility
	* routine <code>getStandardTree</code>.
	*
	* <p> The default implementation returns <code>null</code>.
	*
	* <p> Subclasses should override this method to produce an
	* appropriate subtree if they wish to support the standard
	* metadata format.
	*
	* @return an <code>IIOMetadataNode</code>, or <code>null</code>.
	*
	* @see #getStandardTree
	*/
	@:overload @:protected private function getStandardChromaNode() : IIOMetadataNode;
	
	/**
	* Returns an <code>IIOMetadataNode</code> representing the
	* compression information of the standard
	* <code>javax_imageio_1.0</code> metadata format, or
	* <code>null</code> if no such information is available.  This
	* method is intended to be called by the utility routine
	* <code>getStandardTree</code>.
	*
	* <p> The default implementation returns <code>null</code>.
	*
	* <p> Subclasses should override this method to produce an
	* appropriate subtree if they wish to support the standard
	* metadata format.
	*
	* @return an <code>IIOMetadataNode</code>, or <code>null</code>.
	*
	* @see #getStandardTree
	*/
	@:overload @:protected private function getStandardCompressionNode() : IIOMetadataNode;
	
	/**
	* Returns an <code>IIOMetadataNode</code> representing the data
	* format information of the standard
	* <code>javax_imageio_1.0</code> metadata format, or
	* <code>null</code> if no such information is available.  This
	* method is intended to be called by the utility routine
	* <code>getStandardTree</code>.
	*
	* <p> The default implementation returns <code>null</code>.
	*
	* <p> Subclasses should override this method to produce an
	* appropriate subtree if they wish to support the standard
	* metadata format.
	*
	* @return an <code>IIOMetadataNode</code>, or <code>null</code>.
	*
	* @see #getStandardTree
	*/
	@:overload @:protected private function getStandardDataNode() : IIOMetadataNode;
	
	/**
	* Returns an <code>IIOMetadataNode</code> representing the
	* dimension information of the standard
	* <code>javax_imageio_1.0</code> metadata format, or
	* <code>null</code> if no such information is available.  This
	* method is intended to be called by the utility routine
	* <code>getStandardTree</code>.
	*
	* <p> The default implementation returns <code>null</code>.
	*
	* <p> Subclasses should override this method to produce an
	* appropriate subtree if they wish to support the standard
	* metadata format.
	*
	* @return an <code>IIOMetadataNode</code>, or <code>null</code>.
	*
	* @see #getStandardTree
	*/
	@:overload @:protected private function getStandardDimensionNode() : IIOMetadataNode;
	
	/**
	* Returns an <code>IIOMetadataNode</code> representing the document
	* information of the standard <code>javax_imageio_1.0</code>
	* metadata format, or <code>null</code> if no such information is
	* available.  This method is intended to be called by the utility
	* routine <code>getStandardTree</code>.
	*
	* <p> The default implementation returns <code>null</code>.
	*
	* <p> Subclasses should override this method to produce an
	* appropriate subtree if they wish to support the standard
	* metadata format.
	*
	* @return an <code>IIOMetadataNode</code>, or <code>null</code>.
	*
	* @see #getStandardTree
	*/
	@:overload @:protected private function getStandardDocumentNode() : IIOMetadataNode;
	
	/**
	* Returns an <code>IIOMetadataNode</code> representing the textual
	* information of the standard <code>javax_imageio_1.0</code>
	* metadata format, or <code>null</code> if no such information is
	* available.  This method is intended to be called by the utility
	* routine <code>getStandardTree</code>.
	*
	* <p> The default implementation returns <code>null</code>.
	*
	* <p> Subclasses should override this method to produce an
	* appropriate subtree if they wish to support the standard
	* metadata format.
	*
	* @return an <code>IIOMetadataNode</code>, or <code>null</code>.
	*
	* @see #getStandardTree
	*/
	@:overload @:protected private function getStandardTextNode() : IIOMetadataNode;
	
	/**
	* Returns an <code>IIOMetadataNode</code> representing the tiling
	* information of the standard <code>javax_imageio_1.0</code>
	* metadata format, or <code>null</code> if no such information is
	* available.  This method is intended to be called by the utility
	* routine <code>getStandardTree</code>.
	*
	* <p> The default implementation returns <code>null</code>.
	*
	* <p> Subclasses should override this method to produce an
	* appropriate subtree if they wish to support the standard
	* metadata format.
	*
	* @return an <code>IIOMetadataNode</code>, or <code>null</code>.
	*
	* @see #getStandardTree
	*/
	@:overload @:protected private function getStandardTileNode() : IIOMetadataNode;
	
	/**
	* Returns an <code>IIOMetadataNode</code> representing the
	* transparency information of the standard
	* <code>javax_imageio_1.0</code> metadata format, or
	* <code>null</code> if no such information is available.  This
	* method is intended to be called by the utility routine
	* <code>getStandardTree</code>.
	*
	* <p> The default implementation returns <code>null</code>.
	*
	* <p> Subclasses should override this method to produce an
	* appropriate subtree if they wish to support the standard
	* metadata format.
	*
	* @return an <code>IIOMetadataNode</code>, or <code>null</code>.
	*/
	@:overload @:protected private function getStandardTransparencyNode() : IIOMetadataNode;
	
	/**
	* A utility method to return a tree of
	* <code>IIOMetadataNode</code>s representing the metadata
	* contained within this object according to the conventions of
	* the standard <code>javax_imageio_1.0</code> metadata format.
	*
	* <p> This method calls the various <code>getStandard*Node</code>
	* methods to supply each of the subtrees rooted at the children
	* of the root node.  If any of those methods returns
	* <code>null</code>, the corresponding subtree will be omitted.
	* If all of them return <code>null</code>, a tree consisting of a
	* single root node will be returned.
	*
	* @return an <code>IIOMetadataNode</code> representing the root
	* of a metadata tree in the <code>javax_imageio_1.0</code>
	* format.
	*
	* @see #getStandardChromaNode
	* @see #getStandardCompressionNode
	* @see #getStandardDataNode
	* @see #getStandardDimensionNode
	* @see #getStandardDocumentNode
	* @see #getStandardTextNode
	* @see #getStandardTileNode
	* @see #getStandardTransparencyNode
	*/
	@:overload @:protected @:final private function getStandardTree() : IIOMetadataNode;
	
	/**
	* Sets the internal state of this <code>IIOMetadata</code> object
	* from a tree of XML DOM <code>Node</code>s whose syntax is
	* defined by the given metadata format.  The previous state is
	* discarded.  If the tree's structure or contents are invalid, an
	* <code>IIOInvalidTreeException</code> will be thrown.
	*
	* <p> The default implementation calls <code>reset</code>
	* followed by <code>mergeTree(formatName, root)</code>.
	*
	* @param formatName the desired metadata format.
	* @param root an XML DOM <code>Node</code> object forming the
	* root of a tree.
	*
	* @exception IllegalStateException if this object is read-only.
	* @exception IllegalArgumentException if <code>formatName</code>
	* is <code>null</code> or is not one of the names returned by
	* <code>getMetadataFormatNames</code>.
	* @exception IllegalArgumentException if <code>root</code> is
	* <code>null</code>.
	* @exception IIOInvalidTreeException if the tree cannot be parsed
	* successfully using the rules of the given format.
	*
	* @see #getMetadataFormatNames
	* @see #getAsTree
	* @see #mergeTree
	*/
	@:overload @:public public function setFromTree(formatName : String, root : org.w3c.dom.Node) : Void;
	
	/**
	* Resets all the data stored in this object to default values,
	* usually to the state this object was in immediately after
	* construction, though the precise semantics are plug-in specific.
	* Note that there are many possible default values, depending on
	* how the object was created.
	*
	* @exception IllegalStateException if this object is read-only.
	*
	* @see javax.imageio.ImageReader#getStreamMetadata
	* @see javax.imageio.ImageReader#getImageMetadata
	* @see javax.imageio.ImageWriter#getDefaultStreamMetadata
	* @see javax.imageio.ImageWriter#getDefaultImageMetadata
	*/
	@:overload @:public @:abstract public function reset() : Void;
	
	/**
	* Sets the <code>IIOMetadataController</code> to be used
	* to provide settings for this <code>IIOMetadata</code>
	* object when the <code>activateController</code> method
	* is called, overriding any default controller.  If the
	* argument is <code>null</code>, no controller will be
	* used, including any default.  To restore the default, use
	* <code>setController(getDefaultController())</code>.
	*
	* <p> The default implementation sets the <code>controller</code>
	* instance variable to the supplied value.
	*
	* @param controller An appropriate
	* <code>IIOMetadataController</code>, or <code>null</code>.
	*
	* @see IIOMetadataController
	* @see #getController
	* @see #getDefaultController
	* @see #hasController
	* @see #activateController()
	*/
	@:overload @:public public function setController(controller : javax.imageio.metadata.IIOMetadataController) : Void;
	
	/**
	* Returns whatever <code>IIOMetadataController</code> is currently
	* installed.  This could be the default if there is one,
	* <code>null</code>, or the argument of the most recent call
	* to <code>setController</code>.
	*
	* <p> The default implementation returns the value of the
	* <code>controller</code> instance variable.
	*
	* @return the currently installed
	* <code>IIOMetadataController</code>, or <code>null</code>.
	*
	* @see IIOMetadataController
	* @see #setController
	* @see #getDefaultController
	* @see #hasController
	* @see #activateController()
	*/
	@:overload @:public public function getController() : javax.imageio.metadata.IIOMetadataController;
	
	/**
	* Returns the default <code>IIOMetadataController</code>, if there
	* is one, regardless of the currently installed controller.  If
	* there is no default controller, returns <code>null</code>.
	*
	* <p> The default implementation returns the value of the
	* <code>defaultController</code> instance variable.
	*
	* @return the default <code>IIOMetadataController</code>, or
	* <code>null</code>.
	*
	* @see IIOMetadataController
	* @see #setController(IIOMetadataController)
	* @see #getController
	* @see #hasController
	* @see #activateController()
	*/
	@:overload @:public public function getDefaultController() : javax.imageio.metadata.IIOMetadataController;
	
	/**
	* Returns <code>true</code> if there is a controller installed
	* for this <code>IIOMetadata</code> object.
	*
	* <p> The default implementation returns <code>true</code> if the
	* <code>getController</code> method returns a
	* non-<code>null</code> value.
	*
	* @return <code>true</code> if a controller is installed.
	*
	* @see IIOMetadataController
	* @see #setController(IIOMetadataController)
	* @see #getController
	* @see #getDefaultController
	* @see #activateController()
	*/
	@:overload @:public public function hasController() : Bool;
	
	/**
	* Activates the installed <code>IIOMetadataController</code> for
	* this <code>IIOMetadata</code> object and returns the resulting
	* value.  When this method returns <code>true</code>, all values for this
	* <code>IIOMetadata</code> object will be ready for the next write
	* operation.  If <code>false</code> is
	* returned, no settings in this object will have been disturbed
	* (<i>i.e.</i>, the user canceled the operation).
	*
	* <p> Ordinarily, the controller will be a GUI providing a user
	* interface for a subclass of <code>IIOMetadata</code> for a
	* particular plug-in.  Controllers need not be GUIs, however.
	*
	* <p> The default implementation calls <code>getController</code>
	* and the calls <code>activate</code> on the returned object if
	* <code>hasController</code> returns <code>true</code>.
	*
	* @return <code>true</code> if the controller completed normally.
	*
	* @exception IllegalStateException if there is no controller
	* currently installed.
	*
	* @see IIOMetadataController
	* @see #setController(IIOMetadataController)
	* @see #getController
	* @see #getDefaultController
	* @see #hasController
	*/
	@:overload @:public public function activateController() : Bool;
	
	
}
