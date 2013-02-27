package sun.awt.datatransfer;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class DataTransferer
{
	/**
	* Cached value of Class.forName("[C");
	*/
	public static var charArrayClass(default, null) : Class<Dynamic>;
	
	/**
	* Cached value of Class.forName("[B");
	*/
	public static var byteArrayClass(default, null) : Class<Dynamic>;
	
	/**
	* The <code>DataFlavor</code> representing plain text with Unicode
	* encoding, where:
	* <pre>
	*     representationClass = java.lang.String
	*     mimeType            = "text/plain; charset=Unicode"
	* </pre>
	*/
	public static var plainTextStringFlavor(default, null) : java.awt.datatransfer.DataFlavor;
	
	/**
	* The <code>DataFlavor</code> representing a Java text encoding String
	* encoded in UTF-8, where
	* <pre>
	*     representationClass = [B
	*     mimeType            = "application/x-java-text-encoding"
	* </pre>
	*/
	public static var javaTextEncodingFlavor(default, null) : java.awt.datatransfer.DataFlavor;
	
	/**
	* The accessor method for the singleton DataTransferer instance. Note
	* that in a headless environment, there may be no DataTransferer instance;
	* instead, null will be returned.
	*/
	@:overload public static function getInstance() : DataTransferer;
	
	/**
	* Converts an arbitrary text encoding to its canonical name.
	*/
	@:overload public static function canonicalName(encoding : String) : String;
	
	/**
	* If the specified flavor is a text flavor which supports the "charset"
	* parameter, then this method returns that parameter, or the default
	* charset if no such parameter was specified at construction. For non-
	* text DataFlavors, and for non-charset text flavors, this method returns
	* null.
	*/
	@:overload public static function getTextCharset(flavor : java.awt.datatransfer.DataFlavor) : String;
	
	/**
	* Returns the platform's default character encoding.
	*/
	@:overload public static function getDefaultTextCharset() : String;
	
	/**
	* Tests only whether the flavor's MIME type supports the charset
	* parameter. Must only be called for flavors with a primary type of
	* "text".
	*/
	@:overload public static function doesSubtypeSupportCharset(flavor : java.awt.datatransfer.DataFlavor) : Bool;
	
	@:overload public static function doesSubtypeSupportCharset(subType : String, charset : String) : Bool;
	
	/**
	* Returns whether this flavor is a text type which supports the
	* 'charset' parameter.
	*/
	@:overload public static function isFlavorCharsetTextType(flavor : java.awt.datatransfer.DataFlavor) : Bool;
	
	/**
	* Returns whether this flavor is a text type which does not support the
	* 'charset' parameter.
	*/
	@:overload public static function isFlavorNoncharsetTextType(flavor : java.awt.datatransfer.DataFlavor) : Bool;
	
	/**
	* Determines whether this JRE can both encode and decode text in the
	* specified encoding.
	*/
	@:overload public static function isEncodingSupported(encoding : String) : Bool;
	
	/**
	* Returns {@code true} if the given type is a java.rmi.Remote.
	*/
	@:overload public static function isRemote(type : Class<Dynamic>) : Bool;
	
	/**
	* Returns an Iterator which traverses a SortedSet of Strings which are
	* a total order of the standard character sets supported by the JRE. The
	* ordering follows the same principles as DataFlavor.selectBestTextFlavor.
	* So as to avoid loading all available character converters, optional,
	* non-standard, character sets are not included.
	*/
	@:overload public static function standardEncodings() : java.util.Iterator<Dynamic>;
	
	/**
	* Converts a FlavorMap to a FlavorTable.
	*/
	@:overload public static function adaptFlavorMap(map : java.awt.datatransfer.FlavorMap) : java.awt.datatransfer.FlavorTable;
	
	/**
	* Returns the default Unicode encoding for the platform. The encoding
	* need not be canonical. This method is only used by the archaic function
	* DataFlavor.getTextPlainUnicodeFlavor().
	*/
	@:overload @:abstract public function getDefaultUnicodeEncoding() : String;
	
	/**
	* This method is called for text flavor mappings established while parsing
	* the flavormap.properties file. It stores the "eoln" and "terminators"
	* parameters which are not officially part of the MIME type. They are
	* MIME parameters specific to the flavormap.properties file format.
	*/
	@:overload public function registerTextFlavorProperties(nat : String, charset : String, eoln : String, terminators : String) : Void;
	
	/**
	* Determines whether the native corresponding to the specified long format
	* was listed in the flavormap.properties file.
	*/
	@:overload private function isTextFormat(format : haxe.Int64) : Bool;
	
	@:overload private function getCharsetForTextFormat(lFormat : Null<haxe.Int64>) : String;
	
	/**
	* Specifies whether text imported from the native system in the specified
	* format is locale-dependent. If so, when decoding such text,
	* 'nativeCharsets' should be ignored, and instead, the Transferable should
	* be queried for its javaTextEncodingFlavor data for the correct encoding.
	*/
	@:overload @:abstract public function isLocaleDependentTextFormat(format : haxe.Int64) : Bool;
	
	/**
	* Determines whether the DataFlavor corresponding to the specified long
	* format is DataFlavor.javaFileListFlavor.
	*/
	@:overload @:abstract public function isFileFormat(format : haxe.Int64) : Bool;
	
	/**
	* Determines whether the DataFlavor corresponding to the specified long
	* format is DataFlavor.imageFlavor.
	*/
	@:overload @:abstract public function isImageFormat(format : haxe.Int64) : Bool;
	
	/**
	* Determines whether the format is a URI list we can convert to
	* a DataFlavor.javaFileListFlavor.
	*/
	@:overload private function isURIListFormat(format : haxe.Int64) : Bool;
	
	/**
	* Returns a Map whose keys are all of the possible formats into which the
	* Transferable's transfer data flavors can be translated. The value of
	* each key is the DataFlavor in which the Transferable's data should be
	* requested when converting to the format.
	* <p>
	* The map keys are sorted according to the native formats preference
	* order.
	*/
	@:overload public function getFormatsForTransferable(contents : java.awt.datatransfer.Transferable, map : java.awt.datatransfer.FlavorTable) : java.util.SortedMap<Dynamic, Dynamic>;
	
	/**
	* Returns a Map whose keys are all of the possible formats into which data
	* in the specified DataFlavor can be translated. The value of each key
	* is the DataFlavor in which a Transferable's data should be requested
	* when converting to the format.
	* <p>
	* The map keys are sorted according to the native formats preference
	* order.
	*/
	@:overload public function getFormatsForFlavor(flavor : java.awt.datatransfer.DataFlavor, map : java.awt.datatransfer.FlavorTable) : java.util.SortedMap<Dynamic, Dynamic>;
	
	/**
	* Returns a Map whose keys are all of the possible formats into which data
	* in the specified DataFlavors can be translated. The value of each key
	* is the DataFlavor in which the Transferable's data should be requested
	* when converting to the format.
	* <p>
	* The map keys are sorted according to the native formats preference
	* order.
	*
	* @param flavors the data flavors
	* @param map the FlavorTable which contains mappings between
	*            DataFlavors and data formats
	* @throws NullPointerException if flavors or map is <code>null</code>
	*/
	@:overload public function getFormatsForFlavors(flavors : java.NativeArray<java.awt.datatransfer.DataFlavor>, map : java.awt.datatransfer.FlavorTable) : java.util.SortedMap<Dynamic, Dynamic>;
	
	/**
	* Reduces the Map output for the root function to an array of the
	* Map's keys.
	*/
	@:overload public function getFormatsForTransferableAsArray(contents : java.awt.datatransfer.Transferable, map : java.awt.datatransfer.FlavorTable) : java.NativeArray<haxe.Int64>;
	
	@:overload public function getFormatsForFlavorAsArray(flavor : java.awt.datatransfer.DataFlavor, map : java.awt.datatransfer.FlavorTable) : java.NativeArray<haxe.Int64>;
	
	@:overload public function getFormatsForFlavorsAsArray(flavors : java.NativeArray<java.awt.datatransfer.DataFlavor>, map : java.awt.datatransfer.FlavorTable) : java.NativeArray<haxe.Int64>;
	
	/**
	* Returns a Map whose keys are all of the possible DataFlavors into which
	* data in the specified format can be translated. The value of each key
	* is the format in which the Clipboard or dropped data should be requested
	* when converting to the DataFlavor.
	*/
	@:overload public function getFlavorsForFormat(format : haxe.Int64, map : java.awt.datatransfer.FlavorTable) : java.util.Map<Dynamic, Dynamic>;
	
	/**
	* Returns a Map whose keys are all of the possible DataFlavors into which
	* data in the specified formats can be translated. The value of each key
	* is the format in which the Clipboard or dropped data should be requested
	* when converting to the DataFlavor.
	*/
	@:overload public function getFlavorsForFormats(formats : java.NativeArray<haxe.Int64>, map : java.awt.datatransfer.FlavorTable) : java.util.Map<Dynamic, Dynamic>;
	
	/**
	* Returns a Set of all DataFlavors for which
	* 1) a mapping from at least one of the specified formats exists in the
	* specified map and
	* 2) the data translation for this mapping can be performed by the data
	* transfer subsystem.
	*
	* @param formats the data formats
	* @param map the FlavorTable which contains mappings between
	*            DataFlavors and data formats
	* @throws NullPointerException if formats or map is <code>null</code>
	*/
	@:overload public function getFlavorsForFormatsAsSet(formats : java.NativeArray<haxe.Int64>, map : java.awt.datatransfer.FlavorTable) : java.util.Set<Dynamic>;
	
	/**
	* Returns an array of all DataFlavors for which
	* 1) a mapping from the specified format exists in the specified map and
	* 2) the data translation for this mapping can be performed by the data
	* transfer subsystem.
	* The array will be sorted according to a
	* <code>DataFlavorComparator</code> created with the specified
	* map as an argument.
	*
	* @param format the data format
	* @param map the FlavorTable which contains mappings between
	*            DataFlavors and data formats
	* @throws NullPointerException if map is <code>null</code>
	*/
	@:overload public function getFlavorsForFormatAsArray(format : haxe.Int64, map : java.awt.datatransfer.FlavorTable) : java.NativeArray<java.awt.datatransfer.DataFlavor>;
	
	/**
	* Returns an array of all DataFlavors for which
	* 1) a mapping from at least one of the specified formats exists in the
	* specified map and
	* 2) the data translation for this mapping can be performed by the data
	* transfer subsystem.
	* The array will be sorted according to a
	* <code>DataFlavorComparator</code> created with the specified
	* map as an argument.
	*
	* @param formats the data formats
	* @param map the FlavorTable which contains mappings between
	*            DataFlavors and data formats
	* @throws NullPointerException if formats or map is <code>null</code>
	*/
	@:overload public function getFlavorsForFormatsAsArray(formats : java.NativeArray<haxe.Int64>, map : java.awt.datatransfer.FlavorTable) : java.NativeArray<java.awt.datatransfer.DataFlavor>;
	
	/**
	* Looks-up or registers the String native with the native data transfer
	* system and returns a long format corresponding to that native.
	*/
	@:overload @:abstract private function getFormatForNativeAsLong(str : String) : Null<haxe.Int64>;
	
	/**
	* Looks-up the String native corresponding to the specified long format in
	* the native data transfer system.
	*/
	@:overload @:abstract private function getNativeForFormat(format : haxe.Int64) : String;
	
	/**
	* Primary translation function for translating a Transferable into
	* a byte array, given a source DataFlavor and target format.
	*/
	@:overload public function translateTransferable(contents : java.awt.datatransfer.Transferable, flavor : java.awt.datatransfer.DataFlavor, format : haxe.Int64) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:abstract private function convertFileListToBytes(fileList : java.util.ArrayList<String>) : java.io.ByteArrayOutputStream;
	
	@:overload public function translateBytes(bytes : java.NativeArray<java.StdTypes.Int8>, flavor : java.awt.datatransfer.DataFlavor, format : haxe.Int64, localeTransferable : java.awt.datatransfer.Transferable) : Dynamic;
	
	@:overload public function translateStream(str : java.io.InputStream, flavor : java.awt.datatransfer.DataFlavor, format : haxe.Int64, localeTransferable : java.awt.datatransfer.Transferable) : Dynamic;
	
	/**
	* Primary translation function for translating either a byte array or
	* an InputStream into an Object, given a source format and a target
	* DataFlavor.
	*
	* One of str/bytes is non-null; the other is null.
	* The conversion from byte[] to InputStream is cheap, so do that
	* immediately if necessary. The opposite conversion is expensive,
	* so avoid it if possible.
	*/
	@:overload private function translateBytesOrStream(str : java.io.InputStream, bytes : java.NativeArray<java.StdTypes.Int8>, flavor : java.awt.datatransfer.DataFlavor, format : haxe.Int64, localeTransferable : java.awt.datatransfer.Transferable) : Dynamic;
	
	/**
	* Decodes a byte array into a set of String filenames.
	*/
	@:overload @:abstract private function dragQueryFile(bytes : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<String>;
	
	/**
	* Decodes URIs from either a byte array or a stream.
	*/
	@:overload private function dragQueryURIs(stream : java.io.InputStream, bytes : java.NativeArray<java.StdTypes.Int8>, format : haxe.Int64, localeTransferable : java.awt.datatransfer.Transferable) : java.NativeArray<java.net.URI>;
	
	/**
	* Translates either a byte array or an input stream which contain
	* platform-specific image data in the given format into an Image.
	*/
	@:overload @:abstract private function platformImageBytesOrStreamToImage(str : java.io.InputStream, bytes : java.NativeArray<java.StdTypes.Int8>, format : haxe.Int64) : java.awt.Image;
	
	/**
	* Translates either a byte array or an input stream which contain
	* an image data in the given standard format into an Image.
	*
	* @param mimeType image MIME type, such as: image/png, image/jpeg, image/gif
	*/
	@:overload private function standardImageBytesOrStreamToImage(inputStream : java.io.InputStream, bytes : java.NativeArray<java.StdTypes.Int8>, mimeType : String) : java.awt.Image;
	
	/**
	* Translates a Java Image into a byte array which contains platform-
	* specific image data in the given format.
	*/
	@:overload @:abstract private function imageToPlatformBytes(image : java.awt.Image, format : haxe.Int64) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Translates a Java Image into a byte array which contains
	* an image data in the given standard format.
	*
	* @param mimeType image MIME type, such as: image/png, image/jpeg
	*/
	@:overload private function imageToStandardBytes(image : java.awt.Image, mimeType : String) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload private function imageToStandardBytesImpl(renderedImage : java.awt.image.RenderedImage, mimeType : String) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function convertData(source : Dynamic, contents : java.awt.datatransfer.Transferable, format : haxe.Int64, formatMap : java.util.Map<Dynamic, Dynamic>, isToolkitThread : Bool) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function processDataConversionRequests() : Void;
	
	@:overload @:abstract public function getToolkitThreadBlockedHandler() : sun.awt.datatransfer.ToolkitThreadBlockedHandler;
	
	/**
	* Helper function to reduce a Map with Long keys to a long array.
	* <p>
	* The map keys are sorted according to the native formats preference
	* order.
	*/
	@:overload public static function keysToLongArray(map : java.util.SortedMap<Dynamic, Dynamic>) : java.NativeArray<haxe.Int64>;
	
	/**
	* Helper function to reduce a Map with DataFlavor keys to a DataFlavor
	* array. The array will be sorted according to
	* <code>DataFlavorComparator</code>.
	*/
	@:overload public static function keysToDataFlavorArray(map : java.util.Map<Dynamic, Dynamic>) : java.NativeArray<java.awt.datatransfer.DataFlavor>;
	
	/**
	* Helper function to convert a Set of DataFlavors to a sorted array.
	* The array will be sorted according to <code>DataFlavorComparator</code>.
	*/
	@:overload public static function setToSortedDataFlavorArray(flavorsSet : java.util.Set<Dynamic>) : java.NativeArray<java.awt.datatransfer.DataFlavor>;
	
	/**
	* Helper function to convert a Set of DataFlavors to a sorted array.
	* The array will be sorted according to a
	* <code>DataFlavorComparator</code> created with the specified
	* flavor-to-native map as an argument.
	*/
	@:overload public static function setToSortedDataFlavorArray(flavorsSet : java.util.Set<Dynamic>, flavorToNativeMap : java.util.Map<Dynamic, Dynamic>) : java.NativeArray<java.awt.datatransfer.DataFlavor>;
	
	/**
	* Helper function to convert an InputStream to a byte[] array.
	*/
	@:overload private static function inputStreamToByteArray(str : java.io.InputStream) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns platform-specific mappings for the specified native.
	* If there are no platform-specific mappings for this native, the method
	* returns an empty <code>List</code>.
	*/
	@:overload public function getPlatformMappingsForNative(nat : String) : java.util.List<Dynamic>;
	
	/**
	* Returns platform-specific mappings for the specified flavor.
	* If there are no platform-specific mappings for this flavor, the method
	* returns an empty <code>List</code>.
	*/
	@:overload public function getPlatformMappingsForFlavor(df : java.awt.datatransfer.DataFlavor) : java.util.List<Dynamic>;
	
	
}
/**
* Lazy initialization of Standard Encodings.
*/
@:native('sun$awt$datatransfer$DataTransferer$StandardEncodingsHolder') @:internal extern class DataTransferer_StandardEncodingsHolder
{
	
}
/**
* Used for decoding and reencoding an InputStream on demand so that we
* can strip NUL terminators and perform EOLN search-and-replace.
*/
@:native('sun$awt$datatransfer$DataTransferer$ReencodingInputStream') extern class DataTransferer_ReencodingInputStream extends java.io.InputStream
{
	private var wrapped : java.io.BufferedReader;
	
	//private var _in(default, null) : java.NativeArray<java.StdTypes.Char16>;
	
	private var out : java.NativeArray<java.StdTypes.Int8>;
	
	private var encoder : java.nio.charset.CharsetEncoder;
	
	private var inBuf : java.nio.CharBuffer;
	
	private var outBuf : java.nio.ByteBuffer;
	
	private var eoln : java.NativeArray<java.StdTypes.Char16>;
	
	private var numTerminators : Int;
	
	private var eos : Bool;
	
	private var index : Int;
	
	@:overload public function new(bytestream : java.io.InputStream, format : haxe.Int64, targetEncoding : String, localeTransferable : java.awt.datatransfer.Transferable) : Void;
	
	@:overload override public function read() : Int;
	
	@:overload override public function available() : Int;
	
	@:overload override public function close() : Void;
	
	
}
/**
* A Comparator which includes a helper function for comparing two Objects
* which are likely to be keys in the specified Map.
*/
@:native('sun$awt$datatransfer$DataTransferer$IndexedComparator') extern class DataTransferer_IndexedComparator implements java.util.Comparator<Dynamic>
{
	/**
	* The best Object (e.g., DataFlavor) will be the last in sequence.
	*/
	public static var SELECT_BEST(default, null) : Bool;
	
	/**
	* The best Object (e.g., DataFlavor) will be the first in sequence.
	*/
	public static var SELECT_WORST(default, null) : Bool;
	
	private var order(default, null) : Bool;
	
	@:overload public function new() : Void;
	
	@:overload public function new(order : Bool) : Void;
	
	/**
	* Helper method to compare two objects by their Integer indices in the
	* given map. If the map doesn't contain an entry for either of the
	* objects, the fallback index will be used for the object instead.
	*
	* @param indexMap the map which maps objects into Integer indexes.
	* @param obj1 the first object to be compared.
	* @param obj2 the second object to be compared.
	* @param fallbackIndex the Integer to be used as a fallback index.
	* @return a negative integer, zero, or a positive integer as the
	*             first object is mapped to a less, equal to, or greater
	*             index than the second.
	*/
	@:overload private static function compareIndices(indexMap : java.util.Map<Dynamic, Dynamic>, obj1 : Dynamic, obj2 : Dynamic, fallbackIndex : Null<Int>) : Int;
	
	/**
	* Helper method to compare two objects by their Long indices in the
	* given map. If the map doesn't contain an entry for either of the
	* objects, the fallback index will be used for the object instead.
	*
	* @param indexMap the map which maps objects into Long indexes.
	* @param obj1 the first object to be compared.
	* @param obj2 the second object to be compared.
	* @param fallbackIndex the Long to be used as a fallback index.
	* @return a negative integer, zero, or a positive integer as the
	*             first object is mapped to a less, equal to, or greater
	*             index than the second.
	*/
	@:overload private static function compareLongs(indexMap : java.util.Map<Dynamic, Dynamic>, obj1 : Dynamic, obj2 : Dynamic, fallbackIndex : Null<haxe.Int64>) : Int;
	
	/**
	* Compares its two arguments for order.  Returns a negative integer,
	* zero, or a positive integer as the first argument is less than, equal
	* to, or greater than the second.<p>
	*
	* In the foregoing description, the notation
	* <tt>sgn(</tt><i>expression</i><tt>)</tt> designates the mathematical
	* <i>signum</i> function, which is defined to return one of <tt>-1</tt>,
	* <tt>0</tt>, or <tt>1</tt> according to whether the value of
	* <i>expression</i> is negative, zero or positive.<p>
	*
	* The implementor must ensure that <tt>sgn(compare(x, y)) ==
	* -sgn(compare(y, x))</tt> for all <tt>x</tt> and <tt>y</tt>.  (This
	* implies that <tt>compare(x, y)</tt> must throw an exception if and only
	* if <tt>compare(y, x)</tt> throws an exception.)<p>
	*
	* The implementor must also ensure that the relation is transitive:
	* <tt>((compare(x, y)&gt;0) &amp;&amp; (compare(y, z)&gt;0))</tt> implies
	* <tt>compare(x, z)&gt;0</tt>.<p>
	*
	* Finally, the implementor must ensure that <tt>compare(x, y)==0</tt>
	* implies that <tt>sgn(compare(x, z))==sgn(compare(y, z))</tt> for all
	* <tt>z</tt>.<p>
	*
	* It is generally the case, but <i>not</i> strictly required that
	* <tt>(compare(x, y)==0) == (x.equals(y))</tt>.  Generally speaking,
	* any comparator that violates this condition should clearly indicate
	* this fact.  The recommended language is "Note: this comparator
	* imposes orderings that are inconsistent with equals."
	*
	* @param o1 the first object to be compared.
	* @param o2 the second object to be compared.
	* @return a negative integer, zero, or a positive integer as the
	*         first argument is less than, equal to, or greater than the
	*         second.
	* @throws NullPointerException if an argument is null and this
	*         comparator does not permit null arguments
	* @throws ClassCastException if the arguments' types prevent them from
	*         being compared by this comparator.
	*/
	@:overload public function compare(o1 : Dynamic, o2 : Dynamic) : Int;
	
	
}
/**
* An IndexedComparator which compares two String charsets. The comparison
* follows the rules outlined in DataFlavor.selectBestTextFlavor. In order
* to ensure that non-Unicode, non-ASCII, non-default charsets are sorted
* in alphabetical order, charsets are not automatically converted to their
* canonical forms.
*/
@:native('sun$awt$datatransfer$DataTransferer$CharsetComparator') extern class DataTransferer_CharsetComparator extends DataTransferer_IndexedComparator
{
	@:overload public function new() : Void;
	
	@:overload public function new(order : Bool) : Void;
	
	/**
	* Compares two String objects. Returns a negative integer, zero,
	* or a positive integer as the first charset is worse than, equal to,
	* or better than the second.
	*
	* @param obj1 the first charset to be compared
	* @param obj2 the second charset to be compared
	* @return a negative integer, zero, or a positive integer as the
	*         first argument is worse, equal to, or better than the
	*         second.
	* @throws ClassCastException if either of the arguments is not
	*         instance of String
	* @throws NullPointerException if either of the arguments is
	*         <code>null</code>.
	*/
	@:overload override public function compare(obj1 : Dynamic, obj2 : Dynamic) : Int;
	
	/**
	* Compares charsets. Returns a negative integer, zero, or a positive
	* integer as the first charset is worse than, equal to, or better than
	* the second.
	* <p>
	* Charsets are ordered according to the following rules:
	* <ul>
	* <li>All unsupported charsets are equal.
	* <li>Any unsupported charset is worse than any supported charset.
	* <li>Unicode charsets, such as "UTF-16", "UTF-8", "UTF-16BE" and
	*     "UTF-16LE", are considered best.
	* <li>After them, platform default charset is selected.
	* <li>"US-ASCII" is the worst of supported charsets.
	* <li>For all other supported charsets, the lexicographically less
	*     one is considered the better.
	* </ul>
	*
	* @param charset1 the first charset to be compared
	* @param charset2 the second charset to be compared.
	* @return a negative integer, zero, or a positive integer as the
	*             first argument is worse, equal to, or better than the
	*             second.
	*/
	@:overload private function compareCharsets(charset1 : String, charset2 : String) : Int;
	
	/**
	* Returns encoding for the specified charset according to the
	* following rules:
	* <ul>
	* <li>If the charset is <code>null</code>, then <code>null</code> will
	*     be returned.
	* <li>Iff the charset specifies an encoding unsupported by this JRE,
	*     <code>UNSUPPORTED_CHARSET</code> will be returned.
	* <li>If the charset specifies an alias name, the corresponding
	*     canonical name will be returned iff the charset is a known
	*     Unicode, ASCII, or default charset.
	* </ul>
	*
	* @param charset the charset.
	* @return an encoding for this charset.
	*/
	@:overload private static function getEncoding(charset : String) : String;
	
	
}
/**
* An IndexedComparator which compares two DataFlavors. For text flavors,
* the comparison follows the rules outlined in
* DataFlavor.selectBestTextFlavor. For non-text flavors, unknown
* application MIME types are preferred, followed by known
* application/x-java-* MIME types. Unknown application types are preferred
* because if the user provides his own data flavor, it will likely be the
* most descriptive one. For flavors which are otherwise equal, the
* flavors' native formats are compared, with greater long values
* taking precedence.
*/
@:native('sun$awt$datatransfer$DataTransferer$DataFlavorComparator') extern class DataTransferer_DataFlavorComparator extends DataTransferer_IndexedComparator
{
	private var flavorToFormatMap(default, null) : java.util.Map<Dynamic, Dynamic>;
	
	@:overload public function new() : Void;
	
	@:overload public function new(order : Bool) : Void;
	
	@:overload public function new(map : java.util.Map<Dynamic, Dynamic>) : Void;
	
	@:overload public function new(map : java.util.Map<Dynamic, Dynamic>, order : Bool) : Void;
	
	@:overload override public function compare(obj1 : Dynamic, obj2 : Dynamic) : Int;
	
	
}
/*
* Given the Map that maps objects to Integer indices and a boolean value,
* this Comparator imposes a direct or reverse order on set of objects.
* <p>
* If the specified boolean value is SELECT_BEST, the Comparator imposes the
* direct index-based order: an object A is greater than an object B if and
* only if the index of A is greater than the index of B. An object that
* doesn't have an associated index is less or equal than any other object.
* <p>
* If the specified boolean value is SELECT_WORST, the Comparator imposes the
* reverse index-based order: an object A is greater than an object B if and
* only if A is less than B with the direct index-based order.
*/
@:native('sun$awt$datatransfer$DataTransferer$IndexOrderComparator') extern class DataTransferer_IndexOrderComparator extends DataTransferer_IndexedComparator
{
	@:overload public function new(indexMap : java.util.Map<Dynamic, Dynamic>) : Void;
	
	@:overload public function new(indexMap : java.util.Map<Dynamic, Dynamic>, order : Bool) : Void;
	
	@:overload override public function compare(obj1 : Dynamic, obj2 : Dynamic) : Int;
	
	
}
/**
* A class that provides access to java.rmi.Remote and java.rmi.MarshalledObject
* without creating a static dependency.
*/
@:native('sun$awt$datatransfer$DataTransferer$RMI') @:internal extern class DataTransferer_RMI
{
	
}
