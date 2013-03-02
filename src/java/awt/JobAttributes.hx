package java.awt;
/*
* Copyright (c) 1999, 2006, Oracle and/or its affiliates. All rights reserved.
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
* A set of attributes which control a print job.
* <p>
* Instances of this class control the number of copies, default selection,
* destination, print dialog, file and printer names, page ranges, multiple
* document handling (including collation), and multi-page imposition (such
* as duplex) of every print job which uses the instance. Attribute names are
* compliant with the Internet Printing Protocol (IPP) 1.1 where possible.
* Attribute values are partially compliant where possible.
* <p>
* To use a method which takes an inner class type, pass a reference to
* one of the constant fields of the inner class. Client code cannot create
* new instances of the inner class types because none of those classes
* has a public constructor. For example, to set the print dialog type to
* the cross-platform, pure Java print dialog, use the following code:
* <pre>
* import java.awt.JobAttributes;
*
* public class PureJavaPrintDialogExample {
*     public void setPureJavaPrintDialog(JobAttributes jobAttributes) {
*         jobAttributes.setDialog(JobAttributes.DialogType.COMMON);
*     }
* }
* </pre>
* <p>
* Every IPP attribute which supports an <i>attributeName</i>-default value
* has a corresponding <code>set<i>attributeName</i>ToDefault</code> method.
* Default value fields are not provided.
*
* @author      David Mendenhall
* @since 1.3
*/
@:require(java3) extern class JobAttributes implements java.lang.Cloneable
{
	/**
	* Constructs a <code>JobAttributes</code> instance with default
	* values for every attribute.  The dialog defaults to
	* <code>DialogType.NATIVE</code>.  Min page defaults to
	* <code>1</code>.  Max page defaults to <code>Integer.MAX_VALUE</code>.
	* Destination defaults to <code>DestinationType.PRINTER</code>.
	* Selection defaults to <code>DefaultSelectionType.ALL</code>.
	* Number of copies defaults to <code>1</code>. Multiple document handling defaults
	* to <code>MultipleDocumentHandlingType.SEPARATE_DOCUMENTS_UNCOLLATED_COPIES</code>.
	* Sides defaults to <code>SidesType.ONE_SIDED</code>. File name defaults
	* to <code>null</code>.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a <code>JobAttributes</code> instance which is a copy
	* of the supplied <code>JobAttributes</code>.
	*
	* @param   obj the <code>JobAttributes</code> to copy
	*/
	@:overload public function new(obj : java.awt.JobAttributes) : Void;
	
	/**
	* Constructs a <code>JobAttributes</code> instance with the
	* specified values for every attribute.
	*
	* @param   copies an integer greater than 0
	* @param   defaultSelection <code>DefaultSelectionType.ALL</code>,
	*          <code>DefaultSelectionType.RANGE</code>, or
	*          <code>DefaultSelectionType.SELECTION</code>
	* @param   destination <code>DesintationType.FILE</code> or
	*          <code>DesintationType.PRINTER</code>
	* @param   dialog <code>DialogType.COMMON</code>,
	*          <code>DialogType.NATIVE</code>, or
	*          <code>DialogType.NONE</code>
	* @param   fileName the possibly <code>null</code> file name
	* @param   maxPage an integer greater than zero and greater than or equal
	*          to <i>minPage</i>
	* @param   minPage an integer greater than zero and less than or equal
	*          to <i>maxPage</i>
	* @param   multipleDocumentHandling
	*     <code>MultipleDocumentHandlingType.SEPARATE_DOCUMENTS_COLLATED_COPIES</code> or
	*     <code>MultipleDocumentHandlingType.SEPARATE_DOCUMENTS_UNCOLLATED_COPIES</code>
	* @param   pageRanges an array of integer arrays of two elements; an array
	*          is interpreted as a range spanning all pages including and
	*          between the specified pages; ranges must be in ascending
	*          order and must not overlap; specified page numbers cannot be
	*          less than <i>minPage</i> nor greater than <i>maxPage</i>;
	*          for example:
	*          <pre>
	*          (new int[][] { new int[] { 1, 3 }, new int[] { 5, 5 },
	*                         new int[] { 15, 19 } }),
	*          </pre>
	*          specifies pages 1, 2, 3, 5, 15, 16, 17, 18, and 19. Note that
	*          (<code>new int[][] { new int[] { 1, 1 }, new int[] { 1, 2 } }</code>),
	*          is an invalid set of page ranges because the two ranges
	*          overlap
	* @param   printer the possibly <code>null</code> printer name
	* @param   sides <code>SidesType.ONE_SIDED</code>,
	*          <code>SidesType.TWO_SIDED_LONG_EDGE</code>, or
	*          <code>SidesType.TWO_SIDED_SHORT_EDGE</code>
	* @throws  IllegalArgumentException if one or more of the above
	*          conditions is violated
	*/
	@:overload public function new(copies : Int, defaultSelection : java.awt.JobAttributes.JobAttributes_DefaultSelectionType, destination : java.awt.JobAttributes.JobAttributes_DestinationType, dialog : java.awt.JobAttributes.JobAttributes_DialogType, fileName : String, maxPage : Int, minPage : Int, multipleDocumentHandling : java.awt.JobAttributes.JobAttributes_MultipleDocumentHandlingType, pageRanges : java.NativeArray<java.NativeArray<Int>>, printer : String, sides : java.awt.JobAttributes.JobAttributes_SidesType) : Void;
	
	/**
	* Creates and returns a copy of this <code>JobAttributes</code>.
	*
	* @return  the newly created copy; it is safe to cast this Object into
	*          a <code>JobAttributes</code>
	*/
	@:overload public function clone() : Dynamic;
	
	/**
	* Sets all of the attributes of this <code>JobAttributes</code> to
	* the same values as the attributes of obj.
	*
	* @param   obj the <code>JobAttributes</code> to copy
	*/
	@:overload public function set(obj : java.awt.JobAttributes) : Void;
	
	/**
	* Returns the number of copies the application should render for jobs
	* using these attributes. This attribute is updated to the value chosen
	* by the user.
	*
	* @return  an integer greater than 0.
	*/
	@:overload public function getCopies() : Int;
	
	/**
	* Specifies the number of copies the application should render for jobs
	* using these attributes. Not specifying this attribute is equivalent to
	* specifying <code>1</code>.
	*
	* @param   copies an integer greater than 0
	* @throws  IllegalArgumentException if <code>copies</code> is less than
	*      or equal to 0
	*/
	@:overload public function setCopies(copies : Int) : Void;
	
	/**
	* Sets the number of copies the application should render for jobs using
	* these attributes to the default. The default number of copies is 1.
	*/
	@:overload public function setCopiesToDefault() : Void;
	
	/**
	* Specifies whether, for jobs using these attributes, the application
	* should print all pages, the range specified by the return value of
	* <code>getPageRanges</code>, or the current selection. This attribute
	* is updated to the value chosen by the user.
	*
	* @return  DefaultSelectionType.ALL, DefaultSelectionType.RANGE, or
	*          DefaultSelectionType.SELECTION
	*/
	@:overload public function getDefaultSelection() : java.awt.JobAttributes.JobAttributes_DefaultSelectionType;
	
	/**
	* Specifies whether, for jobs using these attributes, the application
	* should print all pages, the range specified by the return value of
	* <code>getPageRanges</code>, or the current selection. Not specifying
	* this attribute is equivalent to specifying DefaultSelectionType.ALL.
	*
	* @param   defaultSelection DefaultSelectionType.ALL,
	*          DefaultSelectionType.RANGE, or DefaultSelectionType.SELECTION.
	* @throws  IllegalArgumentException if defaultSelection is <code>null</code>
	*/
	@:overload public function setDefaultSelection(defaultSelection : java.awt.JobAttributes.JobAttributes_DefaultSelectionType) : Void;
	
	/**
	* Specifies whether output will be to a printer or a file for jobs using
	* these attributes. This attribute is updated to the value chosen by the
	* user.
	*
	* @return  DesintationType.FILE or DesintationType.PRINTER
	*/
	@:overload public function getDestination() : java.awt.JobAttributes.JobAttributes_DestinationType;
	
	/**
	* Specifies whether output will be to a printer or a file for jobs using
	* these attributes. Not specifying this attribute is equivalent to
	* specifying DesintationType.PRINTER.
	*
	* @param   destination DesintationType.FILE or DesintationType.PRINTER.
	* @throws  IllegalArgumentException if destination is null.
	*/
	@:overload public function setDestination(destination : java.awt.JobAttributes.JobAttributes_DestinationType) : Void;
	
	/**
	* Returns whether, for jobs using these attributes, the user should see
	* a print dialog in which to modify the print settings, and which type of
	* print dialog should be displayed. DialogType.COMMON denotes a cross-
	* platform, pure Java print dialog. DialogType.NATIVE denotes the
	* platform's native print dialog. If a platform does not support a native
	* print dialog, the pure Java print dialog is displayed instead.
	* DialogType.NONE specifies no print dialog (i.e., background printing).
	* This attribute cannot be modified by, and is not subject to any
	* limitations of, the implementation or the target printer.
	*
	* @return  <code>DialogType.COMMON</code>, <code>DialogType.NATIVE</code>, or
	*          <code>DialogType.NONE</code>
	*/
	@:overload public function getDialog() : java.awt.JobAttributes.JobAttributes_DialogType;
	
	/**
	* Specifies whether, for jobs using these attributes, the user should see
	* a print dialog in which to modify the print settings, and which type of
	* print dialog should be displayed. DialogType.COMMON denotes a cross-
	* platform, pure Java print dialog. DialogType.NATIVE denotes the
	* platform's native print dialog. If a platform does not support a native
	* print dialog, the pure Java print dialog is displayed instead.
	* DialogType.NONE specifies no print dialog (i.e., background printing).
	* Not specifying this attribute is equivalent to specifying
	* DialogType.NATIVE.
	*
	* @param   dialog DialogType.COMMON, DialogType.NATIVE, or
	*          DialogType.NONE.
	* @throws  IllegalArgumentException if dialog is null.
	*/
	@:overload public function setDialog(dialog : java.awt.JobAttributes.JobAttributes_DialogType) : Void;
	
	/**
	* Specifies the file name for the output file for jobs using these
	* attributes. This attribute is updated to the value chosen by the user.
	*
	* @return  the possibly <code>null</code> file name
	*/
	@:overload public function getFileName() : String;
	
	/**
	* Specifies the file name for the output file for jobs using these
	* attributes. Default is platform-dependent and implementation-defined.
	*
	* @param   fileName the possibly null file name.
	*/
	@:overload public function setFileName(fileName : String) : Void;
	
	/**
	* Returns, for jobs using these attributes, the first page to be
	* printed, if a range of pages is to be printed. This attribute is
	* updated to the value chosen by the user. An application should ignore
	* this attribute on output, unless the return value of the <code>
	* getDefaultSelection</code> method is DefaultSelectionType.RANGE. An
	* application should honor the return value of <code>getPageRanges</code>
	* over the return value of this method, if possible.
	*
	* @return  an integer greater than zero and less than or equal to
	*          <i>toPage</i> and greater than or equal to <i>minPage</i> and
	*          less than or equal to <i>maxPage</i>.
	*/
	@:overload public function getFromPage() : Int;
	
	/**
	* Specifies, for jobs using these attributes, the first page to be
	* printed, if a range of pages is to be printed. If this attribute is not
	* specified, then the values from the pageRanges attribute are used. If
	* pageRanges and either or both of fromPage and toPage are specified,
	* pageRanges takes precedence. Specifying none of pageRanges, fromPage,
	* or toPage is equivalent to calling
	* setPageRanges(new int[][] { new int[] { <i>minPage</i> } });
	*
	* @param   fromPage an integer greater than zero and less than or equal to
	*          <i>toPage</i> and greater than or equal to <i>minPage</i> and
	*          less than or equal to <i>maxPage</i>.
	* @throws  IllegalArgumentException if one or more of the above
	*          conditions is violated.
	*/
	@:overload public function setFromPage(fromPage : Int) : Void;
	
	/**
	* Specifies the maximum value the user can specify as the last page to
	* be printed for jobs using these attributes. This attribute cannot be
	* modified by, and is not subject to any limitations of, the
	* implementation or the target printer.
	*
	* @return  an integer greater than zero and greater than or equal
	*          to <i>minPage</i>.
	*/
	@:overload public function getMaxPage() : Int;
	
	/**
	* Specifies the maximum value the user can specify as the last page to
	* be printed for jobs using these attributes. Not specifying this
	* attribute is equivalent to specifying <code>Integer.MAX_VALUE</code>.
	*
	* @param   maxPage an integer greater than zero and greater than or equal
	*          to <i>minPage</i>
	* @throws  IllegalArgumentException if one or more of the above
	*          conditions is violated
	*/
	@:overload public function setMaxPage(maxPage : Int) : Void;
	
	/**
	* Specifies the minimum value the user can specify as the first page to
	* be printed for jobs using these attributes. This attribute cannot be
	* modified by, and is not subject to any limitations of, the
	* implementation or the target printer.
	*
	* @return  an integer greater than zero and less than or equal
	*          to <i>maxPage</i>.
	*/
	@:overload public function getMinPage() : Int;
	
	/**
	* Specifies the minimum value the user can specify as the first page to
	* be printed for jobs using these attributes. Not specifying this
	* attribute is equivalent to specifying <code>1</code>.
	*
	* @param   minPage an integer greater than zero and less than or equal
	*          to <i>maxPage</i>.
	* @throws  IllegalArgumentException if one or more of the above
	*          conditions is violated.
	*/
	@:overload public function setMinPage(minPage : Int) : Void;
	
	/**
	* Specifies the handling of multiple copies, including collation, for
	* jobs using these attributes. This attribute is updated to the value
	* chosen by the user.
	*
	* @return
	*     MultipleDocumentHandlingType.SEPARATE_DOCUMENTS_COLLATED_COPIES or
	*     MultipleDocumentHandlingType.SEPARATE_DOCUMENTS_UNCOLLATED_COPIES.
	*/
	@:overload public function getMultipleDocumentHandling() : java.awt.JobAttributes.JobAttributes_MultipleDocumentHandlingType;
	
	/**
	* Specifies the handling of multiple copies, including collation, for
	* jobs using these attributes. Not specifying this attribute is equivalent
	* to specifying
	* MultipleDocumentHandlingType.SEPARATE_DOCUMENTS_UNCOLLATED_COPIES.
	*
	* @param   multipleDocumentHandling
	*     MultipleDocumentHandlingType.SEPARATE_DOCUMENTS_COLLATED_COPIES or
	*     MultipleDocumentHandlingType.SEPARATE_DOCUMENTS_UNCOLLATED_COPIES.
	* @throws  IllegalArgumentException if multipleDocumentHandling is null.
	*/
	@:overload public function setMultipleDocumentHandling(multipleDocumentHandling : java.awt.JobAttributes.JobAttributes_MultipleDocumentHandlingType) : Void;
	
	/**
	* Sets the handling of multiple copies, including collation, for jobs
	* using these attributes to the default. The default handling is
	* MultipleDocumentHandlingType.SEPARATE_DOCUMENTS_UNCOLLATED_COPIES.
	*/
	@:overload public function setMultipleDocumentHandlingToDefault() : Void;
	
	/**
	* Specifies, for jobs using these attributes, the ranges of pages to be
	* printed, if a range of pages is to be printed. All range numbers are
	* inclusive. This attribute is updated to the value chosen by the user.
	* An application should ignore this attribute on output, unless the
	* return value of the <code>getDefaultSelection</code> method is
	* DefaultSelectionType.RANGE.
	*
	* @return  an array of integer arrays of 2 elements. An array
	*          is interpreted as a range spanning all pages including and
	*          between the specified pages. Ranges must be in ascending
	*          order and must not overlap. Specified page numbers cannot be
	*          less than <i>minPage</i> nor greater than <i>maxPage</i>.
	*          For example:
	*          (new int[][] { new int[] { 1, 3 }, new int[] { 5, 5 },
	*                         new int[] { 15, 19 } }),
	*          specifies pages 1, 2, 3, 5, 15, 16, 17, 18, and 19.
	*/
	@:overload public function getPageRanges() : java.NativeArray<java.NativeArray<Int>>;
	
	/**
	* Specifies, for jobs using these attributes, the ranges of pages to be
	* printed, if a range of pages is to be printed. All range numbers are
	* inclusive. If this attribute is not specified, then the values from the
	* fromPage and toPages attributes are used. If pageRanges and either or
	* both of fromPage and toPage are specified, pageRanges takes precedence.
	* Specifying none of pageRanges, fromPage, or toPage is equivalent to
	* calling setPageRanges(new int[][] { new int[] { <i>minPage</i>,
	*                                                 <i>minPage</i> } });
	*
	* @param   pageRanges an array of integer arrays of 2 elements. An array
	*          is interpreted as a range spanning all pages including and
	*          between the specified pages. Ranges must be in ascending
	*          order and must not overlap. Specified page numbers cannot be
	*          less than <i>minPage</i> nor greater than <i>maxPage</i>.
	*          For example:
	*          (new int[][] { new int[] { 1, 3 }, new int[] { 5, 5 },
	*                         new int[] { 15, 19 } }),
	*          specifies pages 1, 2, 3, 5, 15, 16, 17, 18, and 19. Note that
	*          (new int[][] { new int[] { 1, 1 }, new int[] { 1, 2 } }),
	*          is an invalid set of page ranges because the two ranges
	*          overlap.
	* @throws  IllegalArgumentException if one or more of the above
	*          conditions is violated.
	*/
	@:overload public function setPageRanges(pageRanges : java.NativeArray<java.NativeArray<Int>>) : Void;
	
	/**
	* Returns the destination printer for jobs using these attributes. This
	* attribute is updated to the value chosen by the user.
	*
	* @return  the possibly null printer name.
	*/
	@:overload public function getPrinter() : String;
	
	/**
	* Specifies the destination printer for jobs using these attributes.
	* Default is platform-dependent and implementation-defined.
	*
	* @param   printer the possibly null printer name.
	*/
	@:overload public function setPrinter(printer : String) : Void;
	
	/**
	* Returns how consecutive pages should be imposed upon the sides of the
	* print medium for jobs using these attributes. SidesType.ONE_SIDED
	* imposes each consecutive page upon the same side of consecutive media
	* sheets. This imposition is sometimes called <i>simplex</i>.
	* SidesType.TWO_SIDED_LONG_EDGE imposes each consecutive pair of pages
	* upon front and back sides of consecutive media sheets, such that the
	* orientation of each pair of pages on the medium would be correct for
	* the reader as if for binding on the long edge. This imposition is
	* sometimes called <i>duplex</i>. SidesType.TWO_SIDED_SHORT_EDGE imposes
	* each consecutive pair of pages upon front and back sides of consecutive
	* media sheets, such that the orientation of each pair of pages on the
	* medium would be correct for the reader as if for binding on the short
	* edge. This imposition is sometimes called <i>tumble</i>. This attribute
	* is updated to the value chosen by the user.
	*
	* @return  SidesType.ONE_SIDED, SidesType.TWO_SIDED_LONG_EDGE, or
	*          SidesType.TWO_SIDED_SHORT_EDGE.
	*/
	@:overload public function getSides() : java.awt.JobAttributes.JobAttributes_SidesType;
	
	/**
	* Specifies how consecutive pages should be imposed upon the sides of the
	* print medium for jobs using these attributes. SidesType.ONE_SIDED
	* imposes each consecutive page upon the same side of consecutive media
	* sheets. This imposition is sometimes called <i>simplex</i>.
	* SidesType.TWO_SIDED_LONG_EDGE imposes each consecutive pair of pages
	* upon front and back sides of consecutive media sheets, such that the
	* orientation of each pair of pages on the medium would be correct for
	* the reader as if for binding on the long edge. This imposition is
	* sometimes called <i>duplex</i>. SidesType.TWO_SIDED_SHORT_EDGE imposes
	* each consecutive pair of pages upon front and back sides of consecutive
	* media sheets, such that the orientation of each pair of pages on the
	* medium would be correct for the reader as if for binding on the short
	* edge. This imposition is sometimes called <i>tumble</i>. Not specifying
	* this attribute is equivalent to specifying SidesType.ONE_SIDED.
	*
	* @param   sides SidesType.ONE_SIDED, SidesType.TWO_SIDED_LONG_EDGE, or
	*          SidesType.TWO_SIDED_SHORT_EDGE.
	* @throws  IllegalArgumentException if sides is null.
	*/
	@:overload public function setSides(sides : java.awt.JobAttributes.JobAttributes_SidesType) : Void;
	
	/**
	* Sets how consecutive pages should be imposed upon the sides of the
	* print medium for jobs using these attributes to the default. The
	* default imposition is SidesType.ONE_SIDED.
	*/
	@:overload public function setSidesToDefault() : Void;
	
	/**
	* Returns, for jobs using these attributes, the last page (inclusive)
	* to be printed, if a range of pages is to be printed. This attribute is
	* updated to the value chosen by the user. An application should ignore
	* this attribute on output, unless the return value of the <code>
	* getDefaultSelection</code> method is DefaultSelectionType.RANGE. An
	* application should honor the return value of <code>getPageRanges</code>
	* over the return value of this method, if possible.
	*
	* @return  an integer greater than zero and greater than or equal
	*          to <i>toPage</i> and greater than or equal to <i>minPage</i>
	*          and less than or equal to <i>maxPage</i>.
	*/
	@:overload public function getToPage() : Int;
	
	/**
	* Specifies, for jobs using these attributes, the last page (inclusive)
	* to be printed, if a range of pages is to be printed.
	* If this attribute is not specified, then the values from the pageRanges
	* attribute are used. If pageRanges and either or both of fromPage and
	* toPage are specified, pageRanges takes precedence. Specifying none of
	* pageRanges, fromPage, or toPage is equivalent to calling
	* setPageRanges(new int[][] { new int[] { <i>minPage</i> } });
	*
	* @param   toPage an integer greater than zero and greater than or equal
	*          to <i>fromPage</i> and greater than or equal to <i>minPage</i>
	*          and less than or equal to <i>maxPage</i>.
	* @throws  IllegalArgumentException if one or more of the above
	*          conditions is violated.
	*/
	@:overload public function setToPage(toPage : Int) : Void;
	
	/**
	* Determines whether two JobAttributes are equal to each other.
	* <p>
	* Two JobAttributes are equal if and only if each of their attributes are
	* equal. Attributes of enumeration type are equal if and only if the
	* fields refer to the same unique enumeration object. A set of page
	* ranges is equal if and only if the sets are of equal length, each range
	* enumerates the same pages, and the ranges are in the same order.
	*
	* @param   obj the object whose equality will be checked.
	* @return  whether obj is equal to this JobAttribute according to the
	*          above criteria.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns a hash code value for this JobAttributes.
	*
	* @return  the hash code.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns a string representation of this JobAttributes.
	*
	* @return  the string representation.
	*/
	@:overload public function toString() : String;
	
	
}
/**
* A type-safe enumeration of possible default selection states.
* @since 1.3
*/
@:require(java3) @:native('java$awt$JobAttributes$DefaultSelectionType') extern class JobAttributes_DefaultSelectionType extends java.awt.AttributeValue
{
	/**
	* The <code>DefaultSelectionType</code> instance to use for
	* specifying that all pages of the job should be printed.
	*/
	public static var ALL(default, null) : java.awt.JobAttributes.JobAttributes_DefaultSelectionType;
	
	/**
	* The <code>DefaultSelectionType</code> instance to use for
	* specifying that a range of pages of the job should be printed.
	*/
	public static var RANGE(default, null) : java.awt.JobAttributes.JobAttributes_DefaultSelectionType;
	
	/**
	* The <code>DefaultSelectionType</code> instance to use for
	* specifying that the current selection should be printed.
	*/
	public static var SELECTION(default, null) : java.awt.JobAttributes.JobAttributes_DefaultSelectionType;
	
	
}
/**
* A type-safe enumeration of possible job destinations.
* @since 1.3
*/
@:require(java3) @:native('java$awt$JobAttributes$DestinationType') extern class JobAttributes_DestinationType extends java.awt.AttributeValue
{
	/**
	* The <code>DestinationType</code> instance to use for
	* specifying print to file.
	*/
	public static var FILE(default, null) : java.awt.JobAttributes.JobAttributes_DestinationType;
	
	/**
	* The <code>DestinationType</code> instance to use for
	* specifying print to printer.
	*/
	public static var PRINTER(default, null) : java.awt.JobAttributes.JobAttributes_DestinationType;
	
	
}
/**
* A type-safe enumeration of possible dialogs to display to the user.
* @since 1.3
*/
@:require(java3) @:native('java$awt$JobAttributes$DialogType') extern class JobAttributes_DialogType extends java.awt.AttributeValue
{
	/**
	* The <code>DialogType</code> instance to use for
	* specifying the cross-platform, pure Java print dialog.
	*/
	public static var COMMON(default, null) : java.awt.JobAttributes.JobAttributes_DialogType;
	
	/**
	* The <code>DialogType</code> instance to use for
	* specifying the platform's native print dialog.
	*/
	public static var NATIVE(default, null) : java.awt.JobAttributes.JobAttributes_DialogType;
	
	/**
	* The <code>DialogType</code> instance to use for
	* specifying no print dialog.
	*/
	public static var NONE(default, null) : java.awt.JobAttributes.JobAttributes_DialogType;
	
	
}
/**
* A type-safe enumeration of possible multiple copy handling states.
* It is used to control how the sheets of multiple copies of a single
* document are collated.
* @since 1.3
*/
@:require(java3) @:native('java$awt$JobAttributes$MultipleDocumentHandlingType') extern class JobAttributes_MultipleDocumentHandlingType extends java.awt.AttributeValue
{
	/**
	* The <code>MultipleDocumentHandlingType</code> instance to use for specifying
	* that the job should be divided into separate, collated copies.
	*/
	public static var SEPARATE_DOCUMENTS_COLLATED_COPIES(default, null) : java.awt.JobAttributes.JobAttributes_MultipleDocumentHandlingType;
	
	/**
	* The <code>MultipleDocumentHandlingType</code> instance to use for specifying
	* that the job should be divided into separate, uncollated copies.
	*/
	public static var SEPARATE_DOCUMENTS_UNCOLLATED_COPIES(default, null) : java.awt.JobAttributes.JobAttributes_MultipleDocumentHandlingType;
	
	
}
/**
* A type-safe enumeration of possible multi-page impositions. These
* impositions are in compliance with IPP 1.1.
* @since 1.3
*/
@:require(java3) @:native('java$awt$JobAttributes$SidesType') extern class JobAttributes_SidesType extends java.awt.AttributeValue
{
	/**
	* The <code>SidesType</code> instance to use for specifying that
	* consecutive job pages should be printed upon the same side of
	* consecutive media sheets.
	*/
	public static var ONE_SIDED(default, null) : java.awt.JobAttributes.JobAttributes_SidesType;
	
	/**
	* The <code>SidesType</code> instance to use for specifying that
	* consecutive job pages should be printed upon front and back sides
	* of consecutive media sheets, such that the orientation of each pair
	* of pages on the medium would be correct for the reader as if for
	* binding on the long edge.
	*/
	public static var TWO_SIDED_LONG_EDGE(default, null) : java.awt.JobAttributes.JobAttributes_SidesType;
	
	/**
	* The <code>SidesType</code> instance to use for specifying that
	* consecutive job pages should be printed upon front and back sides
	* of consecutive media sheets, such that the orientation of each pair
	* of pages on the medium would be correct for the reader as if for
	* binding on the short edge.
	*/
	public static var TWO_SIDED_SHORT_EDGE(default, null) : java.awt.JobAttributes.JobAttributes_SidesType;
	
	
}
