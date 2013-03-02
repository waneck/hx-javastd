package javax.swing;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class JTable extends javax.swing.JComponent implements javax.swing.event.TableModelListener implements javax.swing.Scrollable implements javax.swing.event.TableColumnModelListener implements javax.swing.event.ListSelectionListener implements javax.swing.event.CellEditorListener implements javax.accessibility.Accessible implements javax.swing.event.RowSorterListener
{
	/** Do not adjust column widths automatically; use a horizontal scrollbar instead. */
	public static var AUTO_RESIZE_OFF(default, null) : Int;
	
	/** When a column is adjusted in the UI, adjust the next column the opposite way. */
	public static var AUTO_RESIZE_NEXT_COLUMN(default, null) : Int;
	
	/** During UI adjustment, change subsequent columns to preserve the total width;
	* this is the default behavior. */
	public static var AUTO_RESIZE_SUBSEQUENT_COLUMNS(default, null) : Int;
	
	/** During all resize operations, apply adjustments to the last column only. */
	public static var AUTO_RESIZE_LAST_COLUMN(default, null) : Int;
	
	/** During all resize operations, proportionately resize all columns. */
	public static var AUTO_RESIZE_ALL_COLUMNS(default, null) : Int;
	
	/** The <code>TableModel</code> of the table. */
	private var dataModel : javax.swing.table.TableModel;
	
	/** The <code>TableColumnModel</code> of the table. */
	private var columnModel : javax.swing.table.TableColumnModel;
	
	/** The <code>ListSelectionModel</code> of the table, used to keep track of row selections. */
	private var selectionModel : javax.swing.ListSelectionModel;
	
	/** The <code>TableHeader</code> working with the table. */
	private var tableHeader : javax.swing.table.JTableHeader;
	
	/** The height in pixels of each row in the table. */
	private var rowHeight : Int;
	
	/** The height in pixels of the margin between the cells in each row. */
	private var rowMargin : Int;
	
	/** The color of the grid. */
	private var gridColor : java.awt.Color;
	
	/** The table draws horizontal lines between cells if <code>showHorizontalLines</code> is true. */
	private var showHorizontalLines : Bool;
	
	/** The table draws vertical lines between cells if <code>showVerticalLines</code> is true. */
	private var showVerticalLines : Bool;
	
	/**
	*  Determines if the table automatically resizes the
	*  width of the table's columns to take up the entire width of the
	*  table, and how it does the resizing.
	*/
	private var autoResizeMode : Int;
	
	/**
	*  The table will query the <code>TableModel</code> to build the default
	*  set of columns if this is true.
	*/
	private var autoCreateColumnsFromModel : Bool;
	
	/** Used by the <code>Scrollable</code> interface to determine the initial visible area. */
	private var preferredViewportSize : java.awt.Dimension;
	
	/** True if row selection is allowed in this table. */
	private var rowSelectionAllowed : Bool;
	
	/*
	* If true, both a row selection and a column selection
	* can be non-empty at the same time, the selected cells are the
	* the cells whose row and column are both selected.
	*/
	private var cellSelectionEnabled : Bool;
	
	/** If editing, the <code>Component</code> that is handling the editing. */
	@:transient private var editorComp : java.awt.Component;
	
	/**
	* The active cell editor object, that overwrites the screen real estate
	* occupied by the current cell and allows the user to change its contents.
	* {@code null} if the table isn't currently editing.
	*/
	@:transient private var cellEditor : javax.swing.table.TableCellEditor;
	
	/** Identifies the column of the cell being edited. */
	@:transient private var editingColumn : Int;
	
	/** Identifies the row of the cell being edited. */
	@:transient private var editingRow : Int;
	
	/**
	* A table of objects that display the contents of a cell,
	* indexed by class as declared in <code>getColumnClass</code>
	* in the <code>TableModel</code> interface.
	*/
	@:transient private var defaultRenderersByColumnClass : java.util.Hashtable<Dynamic, Dynamic>;
	
	/**
	* A table of objects that display and edit the contents of a cell,
	* indexed by class as declared in <code>getColumnClass</code>
	* in the <code>TableModel</code> interface.
	*/
	@:transient private var defaultEditorsByColumnClass : java.util.Hashtable<Dynamic, Dynamic>;
	
	/** The foreground color of selected cells. */
	private var selectionForeground : java.awt.Color;
	
	/** The background color of selected cells. */
	private var selectionBackground : java.awt.Color;
	
	/**
	* Constructs a default <code>JTable</code> that is initialized with a default
	* data model, a default column model, and a default selection
	* model.
	*
	* @see #createDefaultDataModel
	* @see #createDefaultColumnModel
	* @see #createDefaultSelectionModel
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a <code>JTable</code> that is initialized with
	* <code>dm</code> as the data model, a default column model,
	* and a default selection model.
	*
	* @param dm        the data model for the table
	* @see #createDefaultColumnModel
	* @see #createDefaultSelectionModel
	*/
	@:overload public function new(dm : javax.swing.table.TableModel) : Void;
	
	/**
	* Constructs a <code>JTable</code> that is initialized with
	* <code>dm</code> as the data model, <code>cm</code>
	* as the column model, and a default selection model.
	*
	* @param dm        the data model for the table
	* @param cm        the column model for the table
	* @see #createDefaultSelectionModel
	*/
	@:overload public function new(dm : javax.swing.table.TableModel, cm : javax.swing.table.TableColumnModel) : Void;
	
	/**
	* Constructs a <code>JTable</code> that is initialized with
	* <code>dm</code> as the data model, <code>cm</code> as the
	* column model, and <code>sm</code> as the selection model.
	* If any of the parameters are <code>null</code> this method
	* will initialize the table with the corresponding default model.
	* The <code>autoCreateColumnsFromModel</code> flag is set to false
	* if <code>cm</code> is non-null, otherwise it is set to true
	* and the column model is populated with suitable
	* <code>TableColumns</code> for the columns in <code>dm</code>.
	*
	* @param dm        the data model for the table
	* @param cm        the column model for the table
	* @param sm        the row selection model for the table
	* @see #createDefaultDataModel
	* @see #createDefaultColumnModel
	* @see #createDefaultSelectionModel
	*/
	@:overload public function new(dm : javax.swing.table.TableModel, cm : javax.swing.table.TableColumnModel, sm : javax.swing.ListSelectionModel) : Void;
	
	/**
	* Constructs a <code>JTable</code> with <code>numRows</code>
	* and <code>numColumns</code> of empty cells using
	* <code>DefaultTableModel</code>.  The columns will have
	* names of the form "A", "B", "C", etc.
	*
	* @param numRows           the number of rows the table holds
	* @param numColumns        the number of columns the table holds
	* @see javax.swing.table.DefaultTableModel
	*/
	@:overload public function new(numRows : Int, numColumns : Int) : Void;
	
	/**
	* Constructs a <code>JTable</code> to display the values in the
	* <code>Vector</code> of <code>Vectors</code>, <code>rowData</code>,
	* with column names, <code>columnNames</code>.  The
	* <code>Vectors</code> contained in <code>rowData</code>
	* should contain the values for that row. In other words,
	* the value of the cell at row 1, column 5 can be obtained
	* with the following code:
	* <p>
	* <pre>((Vector)rowData.elementAt(1)).elementAt(5);</pre>
	* <p>
	* @param rowData           the data for the new table
	* @param columnNames       names of each column
	*/
	@:overload public function new(rowData : java.util.Vector<Dynamic>, columnNames : java.util.Vector<Dynamic>) : Void;
	
	/**
	* Constructs a <code>JTable</code> to display the values in the two dimensional array,
	* <code>rowData</code>, with column names, <code>columnNames</code>.
	* <code>rowData</code> is an array of rows, so the value of the cell at row 1,
	* column 5 can be obtained with the following code:
	* <p>
	* <pre> rowData[1][5]; </pre>
	* <p>
	* All rows must be of the same length as <code>columnNames</code>.
	* <p>
	* @param rowData           the data for the new table
	* @param columnNames       names of each column
	*/
	@:overload public function new(rowData : java.NativeArray<java.NativeArray<Dynamic>>, columnNames : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Calls the <code>configureEnclosingScrollPane</code> method.
	*
	* @see #configureEnclosingScrollPane
	*/
	@:overload override public function addNotify() : Void;
	
	/**
	* If this <code>JTable</code> is the <code>viewportView</code> of an enclosing <code>JScrollPane</code>
	* (the usual situation), configure this <code>ScrollPane</code> by, amongst other things,
	* installing the table's <code>tableHeader</code> as the <code>columnHeaderView</code> of the scroll pane.
	* When a <code>JTable</code> is added to a <code>JScrollPane</code> in the usual way,
	* using <code>new JScrollPane(myTable)</code>, <code>addNotify</code> is
	* called in the <code>JTable</code> (when the table is added to the viewport).
	* <code>JTable</code>'s <code>addNotify</code> method in turn calls this method,
	* which is protected so that this default installation procedure can
	* be overridden by a subclass.
	*
	* @see #addNotify
	*/
	@:overload private function configureEnclosingScrollPane() : Void;
	
	/**
	* Calls the <code>unconfigureEnclosingScrollPane</code> method.
	*
	* @see #unconfigureEnclosingScrollPane
	*/
	@:overload override public function removeNotify() : Void;
	
	/**
	* Reverses the effect of <code>configureEnclosingScrollPane</code>
	* by replacing the <code>columnHeaderView</code> of the enclosing
	* scroll pane with <code>null</code>. <code>JTable</code>'s
	* <code>removeNotify</code> method calls
	* this method, which is protected so that this default uninstallation
	* procedure can be overridden by a subclass.
	*
	* @see #removeNotify
	* @see #configureEnclosingScrollPane
	* @since 1.3
	*/
	@:require(java3) @:overload private function unconfigureEnclosingScrollPane() : Void;
	
	/**
	* Equivalent to <code>new JScrollPane(aTable)</code>.
	*
	* @deprecated As of Swing version 1.0.2,
	* replaced by <code>new JScrollPane(aTable)</code>.
	*/
	@:overload public static function createScrollPaneForTable(aTable : javax.swing.JTable) : javax.swing.JScrollPane;
	
	/**
	* Sets the <code>tableHeader</code> working with this <code>JTable</code> to <code>newHeader</code>.
	* It is legal to have a <code>null</code> <code>tableHeader</code>.
	*
	* @param   tableHeader                       new tableHeader
	* @see     #getTableHeader
	* @beaninfo
	*  bound: true
	*  description: The JTableHeader instance which renders the column headers.
	*/
	@:overload public function setTableHeader(tableHeader : javax.swing.table.JTableHeader) : Void;
	
	/**
	* Returns the <code>tableHeader</code> used by this <code>JTable</code>.
	*
	* @return  the <code>tableHeader</code> used by this table
	* @see     #setTableHeader
	*/
	@:overload public function getTableHeader() : javax.swing.table.JTableHeader;
	
	/**
	* Sets the height, in pixels, of all cells to <code>rowHeight</code>,
	* revalidates, and repaints.
	* The height of the cells will be equal to the row height minus
	* the row margin.
	*
	* @param   rowHeight                       new row height
	* @exception IllegalArgumentException      if <code>rowHeight</code> is
	*                                          less than 1
	* @see     #getRowHeight
	* @beaninfo
	*  bound: true
	*  description: The height of the specified row.
	*/
	@:overload public function setRowHeight(rowHeight : Int) : Void;
	
	/**
	* Returns the height of a table row, in pixels.
	*
	* @return  the height in pixels of a table row
	* @see     #setRowHeight
	*/
	@:overload public function getRowHeight() : Int;
	
	/**
	* Sets the height for <code>row</code> to <code>rowHeight</code>,
	* revalidates, and repaints. The height of the cells in this row
	* will be equal to the row height minus the row margin.
	*
	* @param   row                             the row whose height is being
	changed
	* @param   rowHeight                       new row height, in pixels
	* @exception IllegalArgumentException      if <code>rowHeight</code> is
	*                                          less than 1
	* @beaninfo
	*  bound: true
	*  description: The height in pixels of the cells in <code>row</code>
	* @since 1.3
	*/
	@:require(java3) @:overload public function setRowHeight(row : Int, rowHeight : Int) : Void;
	
	/**
	* Returns the height, in pixels, of the cells in <code>row</code>.
	* @param   row              the row whose height is to be returned
	* @return the height, in pixels, of the cells in the row
	* @since 1.3
	*/
	@:require(java3) @:overload public function getRowHeight(row : Int) : Int;
	
	/**
	* Sets the amount of empty space between cells in adjacent rows.
	*
	* @param  rowMargin  the number of pixels between cells in a row
	* @see     #getRowMargin
	* @beaninfo
	*  bound: true
	*  description: The amount of space between cells.
	*/
	@:overload public function setRowMargin(rowMargin : Int) : Void;
	
	/**
	* Gets the amount of empty space, in pixels, between cells. Equivalent to:
	* <code>getIntercellSpacing().height</code>.
	* @return the number of pixels between cells in a row
	*
	* @see     #setRowMargin
	*/
	@:overload public function getRowMargin() : Int;
	
	/**
	* Sets the <code>rowMargin</code> and the <code>columnMargin</code> --
	* the height and width of the space between cells -- to
	* <code>intercellSpacing</code>.
	*
	* @param   intercellSpacing        a <code>Dimension</code>
	*                                  specifying the new width
	*                                  and height between cells
	* @see     #getIntercellSpacing
	* @beaninfo
	*  description: The spacing between the cells,
	*               drawn in the background color of the JTable.
	*/
	@:overload public function setIntercellSpacing(intercellSpacing : java.awt.Dimension) : Void;
	
	/**
	* Returns the horizontal and vertical space between cells.
	* The default spacing is look and feel dependent.
	*
	* @return  the horizontal and vertical spacing between cells
	* @see     #setIntercellSpacing
	*/
	@:overload public function getIntercellSpacing() : java.awt.Dimension;
	
	/**
	* Sets the color used to draw grid lines to <code>gridColor</code> and redisplays.
	* The default color is look and feel dependent.
	*
	* @param   gridColor                       the new color of the grid lines
	* @exception IllegalArgumentException      if <code>gridColor</code> is <code>null</code>
	* @see     #getGridColor
	* @beaninfo
	*  bound: true
	*  description: The grid color.
	*/
	@:overload public function setGridColor(gridColor : java.awt.Color) : Void;
	
	/**
	* Returns the color used to draw grid lines.
	* The default color is look and feel dependent.
	*
	* @return  the color used to draw grid lines
	* @see     #setGridColor
	*/
	@:overload public function getGridColor() : java.awt.Color;
	
	/**
	*  Sets whether the table draws grid lines around cells.
	*  If <code>showGrid</code> is true it does; if it is false it doesn't.
	*  There is no <code>getShowGrid</code> method as this state is held
	*  in two variables -- <code>showHorizontalLines</code> and <code>showVerticalLines</code> --
	*  each of which can be queried independently.
	*
	* @param   showGrid                 true if table view should draw grid lines
	*
	* @see     #setShowVerticalLines
	* @see     #setShowHorizontalLines
	* @beaninfo
	*  description: The color used to draw the grid lines.
	*/
	@:overload public function setShowGrid(showGrid : Bool) : Void;
	
	/**
	*  Sets whether the table draws horizontal lines between cells.
	*  If <code>showHorizontalLines</code> is true it does; if it is false it doesn't.
	*
	* @param   showHorizontalLines      true if table view should draw horizontal lines
	* @see     #getShowHorizontalLines
	* @see     #setShowGrid
	* @see     #setShowVerticalLines
	* @beaninfo
	*  bound: true
	*  description: Whether horizontal lines should be drawn in between the cells.
	*/
	@:overload public function setShowHorizontalLines(showHorizontalLines : Bool) : Void;
	
	/**
	*  Sets whether the table draws vertical lines between cells.
	*  If <code>showVerticalLines</code> is true it does; if it is false it doesn't.
	*
	* @param   showVerticalLines              true if table view should draw vertical lines
	* @see     #getShowVerticalLines
	* @see     #setShowGrid
	* @see     #setShowHorizontalLines
	* @beaninfo
	*  bound: true
	*  description: Whether vertical lines should be drawn in between the cells.
	*/
	@:overload public function setShowVerticalLines(showVerticalLines : Bool) : Void;
	
	/**
	* Returns true if the table draws horizontal lines between cells, false if it
	* doesn't. The default value is look and feel dependent.
	*
	* @return  true if the table draws horizontal lines between cells, false if it
	*          doesn't
	* @see     #setShowHorizontalLines
	*/
	@:overload public function getShowHorizontalLines() : Bool;
	
	/**
	* Returns true if the table draws vertical lines between cells, false if it
	* doesn't. The default value is look and feel dependent.
	*
	* @return  true if the table draws vertical lines between cells, false if it
	*          doesn't
	* @see     #setShowVerticalLines
	*/
	@:overload public function getShowVerticalLines() : Bool;
	
	/**
	* Sets the table's auto resize mode when the table is resized.  For further
	* information on how the different resize modes work, see
	* {@link #doLayout}.
	*
	* @param   mode One of 5 legal values:
	*                   AUTO_RESIZE_OFF,
	*                   AUTO_RESIZE_NEXT_COLUMN,
	*                   AUTO_RESIZE_SUBSEQUENT_COLUMNS,
	*                   AUTO_RESIZE_LAST_COLUMN,
	*                   AUTO_RESIZE_ALL_COLUMNS
	*
	* @see     #getAutoResizeMode
	* @see     #doLayout
	* @beaninfo
	*  bound: true
	*  description: Whether the columns should adjust themselves automatically.
	*        enum: AUTO_RESIZE_OFF                JTable.AUTO_RESIZE_OFF
	*              AUTO_RESIZE_NEXT_COLUMN        JTable.AUTO_RESIZE_NEXT_COLUMN
	*              AUTO_RESIZE_SUBSEQUENT_COLUMNS JTable.AUTO_RESIZE_SUBSEQUENT_COLUMNS
	*              AUTO_RESIZE_LAST_COLUMN        JTable.AUTO_RESIZE_LAST_COLUMN
	*              AUTO_RESIZE_ALL_COLUMNS        JTable.AUTO_RESIZE_ALL_COLUMNS
	*/
	@:overload public function setAutoResizeMode(mode : Int) : Void;
	
	/**
	* Returns the auto resize mode of the table.  The default mode
	* is AUTO_RESIZE_SUBSEQUENT_COLUMNS.
	*
	* @return  the autoResizeMode of the table
	*
	* @see     #setAutoResizeMode
	* @see     #doLayout
	*/
	@:overload public function getAutoResizeMode() : Int;
	
	/**
	* Sets this table's <code>autoCreateColumnsFromModel</code> flag.
	* This method calls <code>createDefaultColumnsFromModel</code> if
	* <code>autoCreateColumnsFromModel</code> changes from false to true.
	*
	* @param   autoCreateColumnsFromModel   true if <code>JTable</code> should automatically create columns
	* @see     #getAutoCreateColumnsFromModel
	* @see     #createDefaultColumnsFromModel
	* @beaninfo
	*  bound: true
	*  description: Automatically populates the columnModel when a new TableModel is submitted.
	*/
	@:overload public function setAutoCreateColumnsFromModel(autoCreateColumnsFromModel : Bool) : Void;
	
	/**
	* Determines whether the table will create default columns from the model.
	* If true, <code>setModel</code> will clear any existing columns and
	* create new columns from the new model.  Also, if the event in
	* the <code>tableChanged</code> notification specifies that the
	* entire table changed, then the columns will be rebuilt.
	* The default is true.
	*
	* @return  the autoCreateColumnsFromModel of the table
	* @see     #setAutoCreateColumnsFromModel
	* @see     #createDefaultColumnsFromModel
	*/
	@:overload public function getAutoCreateColumnsFromModel() : Bool;
	
	/**
	* Creates default columns for the table from
	* the data model using the <code>getColumnCount</code> method
	* defined in the <code>TableModel</code> interface.
	* <p>
	* Clears any existing columns before creating the
	* new columns based on information from the model.
	*
	* @see     #getAutoCreateColumnsFromModel
	*/
	@:overload public function createDefaultColumnsFromModel() : Void;
	
	/**
	* Sets a default cell renderer to be used if no renderer has been set in
	* a <code>TableColumn</code>. If renderer is <code>null</code>,
	* removes the default renderer for this column class.
	*
	* @param  columnClass     set the default cell renderer for this columnClass
	* @param  renderer        default cell renderer to be used for this
	*                         columnClass
	* @see     #getDefaultRenderer
	* @see     #setDefaultEditor
	*/
	@:overload public function setDefaultRenderer(columnClass : Class<Dynamic>, renderer : javax.swing.table.TableCellRenderer) : Void;
	
	/**
	* Returns the cell renderer to be used when no renderer has been set in
	* a <code>TableColumn</code>. During the rendering of cells the renderer is fetched from
	* a <code>Hashtable</code> of entries according to the class of the cells in the column. If
	* there is no entry for this <code>columnClass</code> the method returns
	* the entry for the most specific superclass. The <code>JTable</code> installs entries
	* for <code>Object</code>, <code>Number</code>, and <code>Boolean</code>, all of which can be modified
	* or replaced.
	*
	* @param   columnClass   return the default cell renderer
	*                        for this columnClass
	* @return  the renderer for this columnClass
	* @see     #setDefaultRenderer
	* @see     #getColumnClass
	*/
	@:overload public function getDefaultRenderer(columnClass : Class<Dynamic>) : javax.swing.table.TableCellRenderer;
	
	/**
	* Sets a default cell editor to be used if no editor has been set in
	* a <code>TableColumn</code>. If no editing is required in a table, or a
	* particular column in a table, uses the <code>isCellEditable</code>
	* method in the <code>TableModel</code> interface to ensure that this
	* <code>JTable</code> will not start an editor in these columns.
	* If editor is <code>null</code>, removes the default editor for this
	* column class.
	*
	* @param  columnClass  set the default cell editor for this columnClass
	* @param  editor   default cell editor to be used for this columnClass
	* @see     TableModel#isCellEditable
	* @see     #getDefaultEditor
	* @see     #setDefaultRenderer
	*/
	@:overload public function setDefaultEditor(columnClass : Class<Dynamic>, editor : javax.swing.table.TableCellEditor) : Void;
	
	/**
	* Returns the editor to be used when no editor has been set in
	* a <code>TableColumn</code>. During the editing of cells the editor is fetched from
	* a <code>Hashtable</code> of entries according to the class of the cells in the column. If
	* there is no entry for this <code>columnClass</code> the method returns
	* the entry for the most specific superclass. The <code>JTable</code> installs entries
	* for <code>Object</code>, <code>Number</code>, and <code>Boolean</code>, all of which can be modified
	* or replaced.
	*
	* @param   columnClass  return the default cell editor for this columnClass
	* @return the default cell editor to be used for this columnClass
	* @see     #setDefaultEditor
	* @see     #getColumnClass
	*/
	@:overload public function getDefaultEditor(columnClass : Class<Dynamic>) : javax.swing.table.TableCellEditor;
	
	/**
	* Turns on or off automatic drag handling. In order to enable automatic
	* drag handling, this property should be set to {@code true}, and the
	* table's {@code TransferHandler} needs to be {@code non-null}.
	* The default value of the {@code dragEnabled} property is {@code false}.
	* <p>
	* The job of honoring this property, and recognizing a user drag gesture,
	* lies with the look and feel implementation, and in particular, the table's
	* {@code TableUI}. When automatic drag handling is enabled, most look and
	* feels (including those that subclass {@code BasicLookAndFeel}) begin a
	* drag and drop operation whenever the user presses the mouse button over
	* an item (in single selection mode) or a selection (in other selection
	* modes) and then moves the mouse a few pixels. Setting this property to
	* {@code true} can therefore have a subtle effect on how selections behave.
	* <p>
	* If a look and feel is used that ignores this property, you can still
	* begin a drag and drop operation by calling {@code exportAsDrag} on the
	* table's {@code TransferHandler}.
	*
	* @param b whether or not to enable automatic drag handling
	* @exception HeadlessException if
	*            <code>b</code> is <code>true</code> and
	*            <code>GraphicsEnvironment.isHeadless()</code>
	*            returns <code>true</code>
	* @see java.awt.GraphicsEnvironment#isHeadless
	* @see #getDragEnabled
	* @see #setTransferHandler
	* @see TransferHandler
	* @since 1.4
	*
	* @beaninfo
	*  description: determines whether automatic drag handling is enabled
	*        bound: false
	*/
	@:require(java4) @:overload public function setDragEnabled(b : Bool) : Void;
	
	/**
	* Returns whether or not automatic drag handling is enabled.
	*
	* @return the value of the {@code dragEnabled} property
	* @see #setDragEnabled
	* @since 1.4
	*/
	@:require(java4) @:overload public function getDragEnabled() : Bool;
	
	/**
	* Sets the drop mode for this component. For backward compatibility,
	* the default for this property is <code>DropMode.USE_SELECTION</code>.
	* Usage of one of the other modes is recommended, however, for an
	* improved user experience. <code>DropMode.ON</code>, for instance,
	* offers similar behavior of showing items as selected, but does so without
	* affecting the actual selection in the table.
	* <p>
	* <code>JTable</code> supports the following drop modes:
	* <ul>
	*    <li><code>DropMode.USE_SELECTION</code></li>
	*    <li><code>DropMode.ON</code></li>
	*    <li><code>DropMode.INSERT</code></li>
	*    <li><code>DropMode.INSERT_ROWS</code></li>
	*    <li><code>DropMode.INSERT_COLS</code></li>
	*    <li><code>DropMode.ON_OR_INSERT</code></li>
	*    <li><code>DropMode.ON_OR_INSERT_ROWS</code></li>
	*    <li><code>DropMode.ON_OR_INSERT_COLS</code></li>
	* </ul>
	* <p>
	* The drop mode is only meaningful if this component has a
	* <code>TransferHandler</code> that accepts drops.
	*
	* @param dropMode the drop mode to use
	* @throws IllegalArgumentException if the drop mode is unsupported
	*         or <code>null</code>
	* @see #getDropMode
	* @see #getDropLocation
	* @see #setTransferHandler
	* @see TransferHandler
	* @since 1.6
	*/
	@:require(java6) @:overload @:final public function setDropMode(dropMode : javax.swing.DropMode) : Void;
	
	/**
	* Returns the drop mode for this component.
	*
	* @return the drop mode for this component
	* @see #setDropMode
	* @since 1.6
	*/
	@:require(java6) @:overload @:final public function getDropMode() : javax.swing.DropMode;
	
	/**
	* Returns the location that this component should visually indicate
	* as the drop location during a DnD operation over the component,
	* or {@code null} if no location is to currently be shown.
	* <p>
	* This method is not meant for querying the drop location
	* from a {@code TransferHandler}, as the drop location is only
	* set after the {@code TransferHandler}'s <code>canImport</code>
	* has returned and has allowed for the location to be shown.
	* <p>
	* When this property changes, a property change event with
	* name "dropLocation" is fired by the component.
	*
	* @return the drop location
	* @see #setDropMode
	* @see TransferHandler#canImport(TransferHandler.TransferSupport)
	* @since 1.6
	*/
	@:require(java6) @:overload @:final public function getDropLocation() : javax.swing.JTable.JTable_DropLocation;
	
	/**
	* Specifies whether a {@code RowSorter} should be created for the
	* table whenever its model changes.
	* <p>
	* When {@code setAutoCreateRowSorter(true)} is invoked, a {@code
	* TableRowSorter} is immediately created and installed on the
	* table.  While the {@code autoCreateRowSorter} property remains
	* {@code true}, every time the model is changed, a new {@code
	* TableRowSorter} is created and set as the table's row sorter.
	*
	* @param autoCreateRowSorter whether or not a {@code RowSorter}
	*        should be automatically created
	* @see javax.swing.table.TableRowSorter
	* @beaninfo
	*        bound: true
	*    preferred: true
	*  description: Whether or not to turn on sorting by default.
	* @since 1.6
	*/
	@:require(java6) @:overload public function setAutoCreateRowSorter(autoCreateRowSorter : Bool) : Void;
	
	/**
	* Returns {@code true} if whenever the model changes, a new
	* {@code RowSorter} should be created and installed
	* as the table's sorter; otherwise, returns {@code false}.
	*
	* @return true if a {@code RowSorter} should be created when
	*         the model changes
	* @since 1.6
	*/
	@:require(java6) @:overload public function getAutoCreateRowSorter() : Bool;
	
	/**
	* Specifies whether the selection should be updated after sorting.
	* If true, on sorting the selection is reset such that
	* the same rows, in terms of the model, remain selected.  The default
	* is true.
	*
	* @param update whether or not to update the selection on sorting
	* @beaninfo
	*        bound: true
	*       expert: true
	*  description: Whether or not to update the selection on sorting
	* @since 1.6
	*/
	@:require(java6) @:overload public function setUpdateSelectionOnSort(update : Bool) : Void;
	
	/**
	* Returns true if the selection should be updated after sorting.
	*
	* @return whether to update the selection on a sort
	* @since 1.6
	*/
	@:require(java6) @:overload public function getUpdateSelectionOnSort() : Bool;
	
	/**
	* Sets the <code>RowSorter</code>.  <code>RowSorter</code> is used
	* to provide sorting and filtering to a <code>JTable</code>.
	* <p>
	* This method clears the selection and resets any variable row heights.
	* <p>
	* This method fires a <code>PropertyChangeEvent</code> when appropriate,
	* with the property name <code>"rowSorter"</code>.  For
	* backward-compatibility, this method fires an additional event with the
	* property name <code>"sorter"</code>.
	* <p>
	* If the underlying model of the <code>RowSorter</code> differs from
	* that of this <code>JTable</code> undefined behavior will result.
	*
	* @param sorter the <code>RowSorter</code>; <code>null</code> turns
	*        sorting off
	* @see javax.swing.table.TableRowSorter
	* @beaninfo
	*        bound: true
	*  description: The table's RowSorter
	* @since 1.6
	*/
	@:require(java6) @:overload public function setRowSorter(sorter : javax.swing.RowSorter<javax.swing.table.TableModel>) : Void;
	
	/**
	* Returns the object responsible for sorting.
	*
	* @return the object responsible for sorting
	* @since 1.6
	*/
	@:require(java6) @:overload public function getRowSorter() : javax.swing.RowSorter<javax.swing.table.TableModel>;
	
	/**
	* Sets the table's selection mode to allow only single selections, a single
	* contiguous interval, or multiple intervals.
	* <P>
	* <bold>Note:</bold>
	* <code>JTable</code> provides all the methods for handling
	* column and row selection.  When setting states,
	* such as <code>setSelectionMode</code>, it not only
	* updates the mode for the row selection model but also sets similar
	* values in the selection model of the <code>columnModel</code>.
	* If you want to have the row and column selection models operating
	* in different modes, set them both directly.
	* <p>
	* Both the row and column selection models for <code>JTable</code>
	* default to using a <code>DefaultListSelectionModel</code>
	* so that <code>JTable</code> works the same way as the
	* <code>JList</code>. See the <code>setSelectionMode</code> method
	* in <code>JList</code> for details about the modes.
	*
	* @see JList#setSelectionMode
	* @beaninfo
	* description: The selection mode used by the row and column selection models.
	*        enum: SINGLE_SELECTION            ListSelectionModel.SINGLE_SELECTION
	*              SINGLE_INTERVAL_SELECTION   ListSelectionModel.SINGLE_INTERVAL_SELECTION
	*              MULTIPLE_INTERVAL_SELECTION ListSelectionModel.MULTIPLE_INTERVAL_SELECTION
	*/
	@:overload public function setSelectionMode(selectionMode : Int) : Void;
	
	/**
	* Sets whether the rows in this model can be selected.
	*
	* @param rowSelectionAllowed   true if this model will allow row selection
	* @see #getRowSelectionAllowed
	* @beaninfo
	*  bound: true
	*    attribute: visualUpdate true
	*  description: If true, an entire row is selected for each selected cell.
	*/
	@:overload public function setRowSelectionAllowed(rowSelectionAllowed : Bool) : Void;
	
	/**
	* Returns true if rows can be selected.
	*
	* @return true if rows can be selected, otherwise false
	* @see #setRowSelectionAllowed
	*/
	@:overload public function getRowSelectionAllowed() : Bool;
	
	/**
	* Sets whether the columns in this model can be selected.
	*
	* @param columnSelectionAllowed   true if this model will allow column selection
	* @see #getColumnSelectionAllowed
	* @beaninfo
	*  bound: true
	*    attribute: visualUpdate true
	*  description: If true, an entire column is selected for each selected cell.
	*/
	@:overload public function setColumnSelectionAllowed(columnSelectionAllowed : Bool) : Void;
	
	/**
	* Returns true if columns can be selected.
	*
	* @return true if columns can be selected, otherwise false
	* @see #setColumnSelectionAllowed
	*/
	@:overload public function getColumnSelectionAllowed() : Bool;
	
	/**
	* Sets whether this table allows both a column selection and a
	* row selection to exist simultaneously. When set,
	* the table treats the intersection of the row and column selection
	* models as the selected cells. Override <code>isCellSelected</code> to
	* change this default behavior. This method is equivalent to setting
	* both the <code>rowSelectionAllowed</code> property and
	* <code>columnSelectionAllowed</code> property of the
	* <code>columnModel</code> to the supplied value.
	*
	* @param  cellSelectionEnabled     true if simultaneous row and column
	*                                  selection is allowed
	* @see #getCellSelectionEnabled
	* @see #isCellSelected
	* @beaninfo
	*  bound: true
	*    attribute: visualUpdate true
	*  description: Select a rectangular region of cells rather than
	*               rows or columns.
	*/
	@:overload public function setCellSelectionEnabled(cellSelectionEnabled : Bool) : Void;
	
	/**
	* Returns true if both row and column selection models are enabled.
	* Equivalent to <code>getRowSelectionAllowed() &&
	* getColumnSelectionAllowed()</code>.
	*
	* @return true if both row and column selection models are enabled
	*
	* @see #setCellSelectionEnabled
	*/
	@:overload public function getCellSelectionEnabled() : Bool;
	
	/**
	*  Selects all rows, columns, and cells in the table.
	*/
	@:overload public function selectAll() : Void;
	
	/**
	* Deselects all selected columns and rows.
	*/
	@:overload public function clearSelection() : Void;
	
	/**
	* Selects the rows from <code>index0</code> to <code>index1</code>,
	* inclusive.
	*
	* @exception IllegalArgumentException      if <code>index0</code> or
	*                                          <code>index1</code> lie outside
	*                                          [0, <code>getRowCount()</code>-1]
	* @param   index0 one end of the interval
	* @param   index1 the other end of the interval
	*/
	@:overload public function setRowSelectionInterval(index0 : Int, index1 : Int) : Void;
	
	/**
	* Selects the columns from <code>index0</code> to <code>index1</code>,
	* inclusive.
	*
	* @exception IllegalArgumentException      if <code>index0</code> or
	*                                          <code>index1</code> lie outside
	*                                          [0, <code>getColumnCount()</code>-1]
	* @param   index0 one end of the interval
	* @param   index1 the other end of the interval
	*/
	@:overload public function setColumnSelectionInterval(index0 : Int, index1 : Int) : Void;
	
	/**
	* Adds the rows from <code>index0</code> to <code>index1</code>, inclusive, to
	* the current selection.
	*
	* @exception IllegalArgumentException      if <code>index0</code> or <code>index1</code>
	*                                          lie outside [0, <code>getRowCount()</code>-1]
	* @param   index0 one end of the interval
	* @param   index1 the other end of the interval
	*/
	@:overload public function addRowSelectionInterval(index0 : Int, index1 : Int) : Void;
	
	/**
	* Adds the columns from <code>index0</code> to <code>index1</code>,
	* inclusive, to the current selection.
	*
	* @exception IllegalArgumentException      if <code>index0</code> or
	*                                          <code>index1</code> lie outside
	*                                          [0, <code>getColumnCount()</code>-1]
	* @param   index0 one end of the interval
	* @param   index1 the other end of the interval
	*/
	@:overload public function addColumnSelectionInterval(index0 : Int, index1 : Int) : Void;
	
	/**
	* Deselects the rows from <code>index0</code> to <code>index1</code>, inclusive.
	*
	* @exception IllegalArgumentException      if <code>index0</code> or
	*                                          <code>index1</code> lie outside
	*                                          [0, <code>getRowCount()</code>-1]
	* @param   index0 one end of the interval
	* @param   index1 the other end of the interval
	*/
	@:overload public function removeRowSelectionInterval(index0 : Int, index1 : Int) : Void;
	
	/**
	* Deselects the columns from <code>index0</code> to <code>index1</code>, inclusive.
	*
	* @exception IllegalArgumentException      if <code>index0</code> or
	*                                          <code>index1</code> lie outside
	*                                          [0, <code>getColumnCount()</code>-1]
	* @param   index0 one end of the interval
	* @param   index1 the other end of the interval
	*/
	@:overload public function removeColumnSelectionInterval(index0 : Int, index1 : Int) : Void;
	
	/**
	* Returns the index of the first selected row, -1 if no row is selected.
	* @return the index of the first selected row
	*/
	@:overload public function getSelectedRow() : Int;
	
	/**
	* Returns the index of the first selected column,
	* -1 if no column is selected.
	* @return the index of the first selected column
	*/
	@:overload public function getSelectedColumn() : Int;
	
	/**
	* Returns the indices of all selected rows.
	*
	* @return an array of integers containing the indices of all selected rows,
	*         or an empty array if no row is selected
	* @see #getSelectedRow
	*/
	@:overload public function getSelectedRows() : java.NativeArray<Int>;
	
	/**
	* Returns the indices of all selected columns.
	*
	* @return an array of integers containing the indices of all selected columns,
	*         or an empty array if no column is selected
	* @see #getSelectedColumn
	*/
	@:overload public function getSelectedColumns() : java.NativeArray<Int>;
	
	/**
	* Returns the number of selected rows.
	*
	* @return the number of selected rows, 0 if no rows are selected
	*/
	@:overload public function getSelectedRowCount() : Int;
	
	/**
	* Returns the number of selected columns.
	*
	* @return the number of selected columns, 0 if no columns are selected
	*/
	@:overload public function getSelectedColumnCount() : Int;
	
	/**
	* Returns true if the specified index is in the valid range of rows,
	* and the row at that index is selected.
	*
	* @return true if <code>row</code> is a valid index and the row at
	*              that index is selected (where 0 is the first row)
	*/
	@:overload public function isRowSelected(row : Int) : Bool;
	
	/**
	* Returns true if the specified index is in the valid range of columns,
	* and the column at that index is selected.
	*
	* @param   column   the column in the column model
	* @return true if <code>column</code> is a valid index and the column at
	*              that index is selected (where 0 is the first column)
	*/
	@:overload public function isColumnSelected(column : Int) : Bool;
	
	/**
	* Returns true if the specified indices are in the valid range of rows
	* and columns and the cell at the specified position is selected.
	* @param row   the row being queried
	* @param column  the column being queried
	*
	* @return true if <code>row</code> and <code>column</code> are valid indices
	*              and the cell at index <code>(row, column)</code> is selected,
	*              where the first row and first column are at index 0
	*/
	@:overload public function isCellSelected(row : Int, column : Int) : Bool;
	
	/**
	* Updates the selection models of the table, depending on the state of the
	* two flags: <code>toggle</code> and <code>extend</code>. Most changes
	* to the selection that are the result of keyboard or mouse events received
	* by the UI are channeled through this method so that the behavior may be
	* overridden by a subclass. Some UIs may need more functionality than
	* this method provides, such as when manipulating the lead for discontiguous
	* selection, and may not call into this method for some selection changes.
	* <p>
	* This implementation uses the following conventions:
	* <ul>
	* <li> <code>toggle</code>: <em>false</em>, <code>extend</code>: <em>false</em>.
	*      Clear the previous selection and ensure the new cell is selected.
	* <li> <code>toggle</code>: <em>false</em>, <code>extend</code>: <em>true</em>.
	*      Extend the previous selection from the anchor to the specified cell,
	*      clearing all other selections.
	* <li> <code>toggle</code>: <em>true</em>, <code>extend</code>: <em>false</em>.
	*      If the specified cell is selected, deselect it. If it is not selected, select it.
	* <li> <code>toggle</code>: <em>true</em>, <code>extend</code>: <em>true</em>.
	*      Apply the selection state of the anchor to all cells between it and the
	*      specified cell.
	* </ul>
	* @param  rowIndex   affects the selection at <code>row</code>
	* @param  columnIndex  affects the selection at <code>column</code>
	* @param  toggle  see description above
	* @param  extend  if true, extend the current selection
	*
	* @since 1.3
	*/
	@:require(java3) @:overload public function changeSelection(rowIndex : Int, columnIndex : Int, toggle : Bool, extend : Bool) : Void;
	
	/**
	* Returns the foreground color for selected cells.
	*
	* @return the <code>Color</code> object for the foreground property
	* @see #setSelectionForeground
	* @see #setSelectionBackground
	*/
	@:overload public function getSelectionForeground() : java.awt.Color;
	
	/**
	* Sets the foreground color for selected cells.  Cell renderers
	* can use this color to render text and graphics for selected
	* cells.
	* <p>
	* The default value of this property is defined by the look
	* and feel implementation.
	* <p>
	* This is a <a href="http://java.sun.com/docs/books/tutorial/javabeans/properties/bound.html">JavaBeans</a> bound property.
	*
	* @param selectionForeground  the <code>Color</code> to use in the foreground
	*                             for selected list items
	* @see #getSelectionForeground
	* @see #setSelectionBackground
	* @see #setForeground
	* @see #setBackground
	* @see #setFont
	* @beaninfo
	*       bound: true
	* description: A default foreground color for selected cells.
	*/
	@:overload public function setSelectionForeground(selectionForeground : java.awt.Color) : Void;
	
	/**
	* Returns the background color for selected cells.
	*
	* @return the <code>Color</code> used for the background of selected list items
	* @see #setSelectionBackground
	* @see #setSelectionForeground
	*/
	@:overload public function getSelectionBackground() : java.awt.Color;
	
	/**
	* Sets the background color for selected cells.  Cell renderers
	* can use this color to the fill selected cells.
	* <p>
	* The default value of this property is defined by the look
	* and feel implementation.
	* <p>
	* This is a <a href="http://java.sun.com/docs/books/tutorial/javabeans/properties/bound.html">JavaBeans</a> bound property.
	*
	* @param selectionBackground  the <code>Color</code> to use for the background
	*                             of selected cells
	* @see #getSelectionBackground
	* @see #setSelectionForeground
	* @see #setForeground
	* @see #setBackground
	* @see #setFont
	* @beaninfo
	*       bound: true
	* description: A default background color for selected cells.
	*/
	@:overload public function setSelectionBackground(selectionBackground : java.awt.Color) : Void;
	
	/**
	* Returns the <code>TableColumn</code> object for the column in the table
	* whose identifier is equal to <code>identifier</code>, when compared using
	* <code>equals</code>.
	*
	* @return  the <code>TableColumn</code> object that matches the identifier
	* @exception IllegalArgumentException      if <code>identifier</code> is <code>null</code> or no <code>TableColumn</code> has this identifier
	*
	* @param   identifier                      the identifier object
	*/
	@:overload public function getColumn(identifier : Dynamic) : javax.swing.table.TableColumn;
	
	/**
	* Maps the index of the column in the view at
	* <code>viewColumnIndex</code> to the index of the column
	* in the table model.  Returns the index of the corresponding
	* column in the model.  If <code>viewColumnIndex</code>
	* is less than zero, returns <code>viewColumnIndex</code>.
	*
	* @param   viewColumnIndex     the index of the column in the view
	* @return  the index of the corresponding column in the model
	*
	* @see #convertColumnIndexToView
	*/
	@:overload public function convertColumnIndexToModel(viewColumnIndex : Int) : Int;
	
	/**
	* Maps the index of the column in the table model at
	* <code>modelColumnIndex</code> to the index of the column
	* in the view.  Returns the index of the
	* corresponding column in the view; returns -1 if this column is not
	* being displayed.  If <code>modelColumnIndex</code> is less than zero,
	* returns <code>modelColumnIndex</code>.
	*
	* @param   modelColumnIndex     the index of the column in the model
	* @return   the index of the corresponding column in the view
	*
	* @see #convertColumnIndexToModel
	*/
	@:overload public function convertColumnIndexToView(modelColumnIndex : Int) : Int;
	
	/**
	* Maps the index of the row in terms of the
	* <code>TableModel</code> to the view.  If the contents of the
	* model are not sorted the model and view indices are the same.
	*
	* @param modelRowIndex the index of the row in terms of the model
	* @return the index of the corresponding row in the view, or -1 if
	*         the row isn't visible
	* @throws IndexOutOfBoundsException if sorting is enabled and passed an
	*         index outside the number of rows of the <code>TableModel</code>
	* @see javax.swing.table.TableRowSorter
	* @since 1.6
	*/
	@:require(java6) @:overload public function convertRowIndexToView(modelRowIndex : Int) : Int;
	
	/**
	* Maps the index of the row in terms of the view to the
	* underlying <code>TableModel</code>.  If the contents of the
	* model are not sorted the model and view indices are the same.
	*
	* @param viewRowIndex the index of the row in the view
	* @return the index of the corresponding row in the model
	* @throws IndexOutOfBoundsException if sorting is enabled and passed an
	*         index outside the range of the <code>JTable</code> as
	*         determined by the method <code>getRowCount</code>
	* @see javax.swing.table.TableRowSorter
	* @see #getRowCount
	* @since 1.6
	*/
	@:require(java6) @:overload public function convertRowIndexToModel(viewRowIndex : Int) : Int;
	
	/**
	* Returns the number of rows that can be shown in the
	* <code>JTable</code>, given unlimited space.  If a
	* <code>RowSorter</code> with a filter has been specified, the
	* number of rows returned may differ from that of the underlying
	* <code>TableModel</code>.
	*
	* @return the number of rows shown in the <code>JTable</code>
	* @see #getColumnCount
	*/
	@:overload public function getRowCount() : Int;
	
	/**
	* Returns the number of columns in the column model. Note that this may
	* be different from the number of columns in the table model.
	*
	* @return  the number of columns in the table
	* @see #getRowCount
	* @see #removeColumn
	*/
	@:overload public function getColumnCount() : Int;
	
	/**
	* Returns the name of the column appearing in the view at
	* column position <code>column</code>.
	*
	* @param  column    the column in the view being queried
	* @return the name of the column at position <code>column</code>
	in the view where the first column is column 0
	*/
	@:overload public function getColumnName(column : Int) : String;
	
	/**
	* Returns the type of the column appearing in the view at
	* column position <code>column</code>.
	*
	* @param   column   the column in the view being queried
	* @return the type of the column at position <code>column</code>
	*          in the view where the first column is column 0
	*/
	@:overload public function getColumnClass(column : Int) : Class<Dynamic>;
	
	/**
	* Returns the cell value at <code>row</code> and <code>column</code>.
	* <p>
	* <b>Note</b>: The column is specified in the table view's display
	*              order, and not in the <code>TableModel</code>'s column
	*              order.  This is an important distinction because as the
	*              user rearranges the columns in the table,
	*              the column at a given index in the view will change.
	*              Meanwhile the user's actions never affect the model's
	*              column ordering.
	*
	* @param   row             the row whose value is to be queried
	* @param   column          the column whose value is to be queried
	* @return  the Object at the specified cell
	*/
	@:overload public function getValueAt(row : Int, column : Int) : Dynamic;
	
	/**
	* Sets the value for the cell in the table model at <code>row</code>
	* and <code>column</code>.
	* <p>
	* <b>Note</b>: The column is specified in the table view's display
	*              order, and not in the <code>TableModel</code>'s column
	*              order.  This is an important distinction because as the
	*              user rearranges the columns in the table,
	*              the column at a given index in the view will change.
	*              Meanwhile the user's actions never affect the model's
	*              column ordering.
	*
	* <code>aValue</code> is the new value.
	*
	* @param   aValue          the new value
	* @param   row             the row of the cell to be changed
	* @param   column          the column of the cell to be changed
	* @see #getValueAt
	*/
	@:overload public function setValueAt(aValue : Dynamic, row : Int, column : Int) : Void;
	
	/**
	* Returns true if the cell at <code>row</code> and <code>column</code>
	* is editable.  Otherwise, invoking <code>setValueAt</code> on the cell
	* will have no effect.
	* <p>
	* <b>Note</b>: The column is specified in the table view's display
	*              order, and not in the <code>TableModel</code>'s column
	*              order.  This is an important distinction because as the
	*              user rearranges the columns in the table,
	*              the column at a given index in the view will change.
	*              Meanwhile the user's actions never affect the model's
	*              column ordering.
	*
	*
	* @param   row      the row whose value is to be queried
	* @param   column   the column whose value is to be queried
	* @return  true if the cell is editable
	* @see #setValueAt
	*/
	@:overload public function isCellEditable(row : Int, column : Int) : Bool;
	
	/**
	*  Appends <code>aColumn</code> to the end of the array of columns held by
	*  this <code>JTable</code>'s column model.
	*  If the column name of <code>aColumn</code> is <code>null</code>,
	*  sets the column name of <code>aColumn</code> to the name
	*  returned by <code>getModel().getColumnName()</code>.
	*  <p>
	*  To add a column to this <code>JTable</code> to display the
	*  <code>modelColumn</code>'th column of data in the model with a
	*  given <code>width</code>, <code>cellRenderer</code>,
	*  and <code>cellEditor</code> you can use:
	*  <pre>
	*
	*      addColumn(new TableColumn(modelColumn, width, cellRenderer, cellEditor));
	*
	*  </pre>
	*  [Any of the <code>TableColumn</code> constructors can be used
	*  instead of this one.]
	*  The model column number is stored inside the <code>TableColumn</code>
	*  and is used during rendering and editing to locate the appropriates
	*  data values in the model. The model column number does not change
	*  when columns are reordered in the view.
	*
	*  @param  aColumn         the <code>TableColumn</code> to be added
	*  @see    #removeColumn
	*/
	@:overload public function addColumn(aColumn : javax.swing.table.TableColumn) : Void;
	
	/**
	*  Removes <code>aColumn</code> from this <code>JTable</code>'s
	*  array of columns.  Note: this method does not remove the column
	*  of data from the model; it just removes the <code>TableColumn</code>
	*  that was responsible for displaying it.
	*
	*  @param  aColumn         the <code>TableColumn</code> to be removed
	*  @see    #addColumn
	*/
	@:overload public function removeColumn(aColumn : javax.swing.table.TableColumn) : Void;
	
	/**
	* Moves the column <code>column</code> to the position currently
	* occupied by the column <code>targetColumn</code> in the view.
	* The old column at <code>targetColumn</code> is
	* shifted left or right to make room.
	*
	* @param   column                  the index of column to be moved
	* @param   targetColumn            the new index of the column
	*/
	@:overload public function moveColumn(column : Int, targetColumn : Int) : Void;
	
	/**
	* Returns the index of the column that <code>point</code> lies in,
	* or -1 if the result is not in the range
	* [0, <code>getColumnCount()</code>-1].
	*
	* @param   point   the location of interest
	* @return  the index of the column that <code>point</code> lies in,
	*          or -1 if the result is not in the range
	*          [0, <code>getColumnCount()</code>-1]
	* @see     #rowAtPoint
	*/
	@:overload public function columnAtPoint(point : java.awt.Point) : Int;
	
	/**
	* Returns the index of the row that <code>point</code> lies in,
	* or -1 if the result is not in the range
	* [0, <code>getRowCount()</code>-1].
	*
	* @param   point   the location of interest
	* @return  the index of the row that <code>point</code> lies in,
	*          or -1 if the result is not in the range
	*          [0, <code>getRowCount()</code>-1]
	* @see     #columnAtPoint
	*/
	@:overload public function rowAtPoint(point : java.awt.Point) : Int;
	
	/**
	* Returns a rectangle for the cell that lies at the intersection of
	* <code>row</code> and <code>column</code>.
	* If <code>includeSpacing</code> is true then the value returned
	* has the full height and width of the row and column
	* specified. If it is false, the returned rectangle is inset by the
	* intercell spacing to return the true bounds of the rendering or
	* editing component as it will be set during rendering.
	* <p>
	* If the column index is valid but the row index is less
	* than zero the method returns a rectangle with the
	* <code>y</code> and <code>height</code> values set appropriately
	* and the <code>x</code> and <code>width</code> values both set
	* to zero. In general, when either the row or column indices indicate a
	* cell outside the appropriate range, the method returns a rectangle
	* depicting the closest edge of the closest cell that is within
	* the table's range. When both row and column indices are out
	* of range the returned rectangle covers the closest
	* point of the closest cell.
	* <p>
	* In all cases, calculations that use this method to calculate
	* results along one axis will not fail because of anomalies in
	* calculations along the other axis. When the cell is not valid
	* the <code>includeSpacing</code> parameter is ignored.
	*
	* @param   row                   the row index where the desired cell
	*                                is located
	* @param   column                the column index where the desired cell
	*                                is located in the display; this is not
	*                                necessarily the same as the column index
	*                                in the data model for the table; the
	*                                {@link #convertColumnIndexToView(int)}
	*                                method may be used to convert a data
	*                                model column index to a display
	*                                column index
	* @param   includeSpacing        if false, return the true cell bounds -
	*                                computed by subtracting the intercell
	*                                spacing from the height and widths of
	*                                the column and row models
	*
	* @return  the rectangle containing the cell at location
	*          <code>row</code>,<code>column</code>
	* @see #getIntercellSpacing
	*/
	@:overload public function getCellRect(row : Int, column : Int, includeSpacing : Bool) : java.awt.Rectangle;
	
	/**
	* Causes this table to lay out its rows and columns.  Overridden so
	* that columns can be resized to accomodate a change in the size of
	* a containing parent.
	* Resizes one or more of the columns in the table
	* so that the total width of all of this <code>JTable</code>'s
	* columns is equal to the width of the table.
	* <p>
	* Before the layout begins the method gets the
	* <code>resizingColumn</code> of the <code>tableHeader</code>.
	* When the method is called as a result of the resizing of an enclosing window,
	* the <code>resizingColumn</code> is <code>null</code>. This means that resizing
	* has taken place "outside" the <code>JTable</code> and the change -
	* or "delta" - should be distributed to all of the columns regardless
	* of this <code>JTable</code>'s automatic resize mode.
	* <p>
	* If the <code>resizingColumn</code> is not <code>null</code>, it is one of
	* the columns in the table that has changed size rather than
	* the table itself. In this case the auto-resize modes govern
	* the way the extra (or deficit) space is distributed
	* amongst the available columns.
	* <p>
	* The modes are:
	* <ul>
	* <li>  AUTO_RESIZE_OFF: Don't automatically adjust the column's
	* widths at all. Use a horizontal scrollbar to accomodate the
	* columns when their sum exceeds the width of the
	* <code>Viewport</code>.  If the <code>JTable</code> is not
	* enclosed in a <code>JScrollPane</code> this may
	* leave parts of the table invisible.
	* <li>  AUTO_RESIZE_NEXT_COLUMN: Use just the column after the
	* resizing column. This results in the "boundary" or divider
	* between adjacent cells being independently adjustable.
	* <li>  AUTO_RESIZE_SUBSEQUENT_COLUMNS: Use all columns after the
	* one being adjusted to absorb the changes.  This is the
	* default behavior.
	* <li>  AUTO_RESIZE_LAST_COLUMN: Automatically adjust the
	* size of the last column only. If the bounds of the last column
	* prevent the desired size from being allocated, set the
	* width of the last column to the appropriate limit and make
	* no further adjustments.
	* <li>  AUTO_RESIZE_ALL_COLUMNS: Spread the delta amongst all the columns
	* in the <code>JTable</code>, including the one that is being
	* adjusted.
	* </ul>
	* <p>
	* <bold>Note:</bold> When a <code>JTable</code> makes adjustments
	*   to the widths of the columns it respects their minimum and
	*   maximum values absolutely.  It is therefore possible that,
	*   even after this method is called, the total width of the columns
	*   is still not equal to the width of the table. When this happens
	*   the <code>JTable</code> does not put itself
	*   in AUTO_RESIZE_OFF mode to bring up a scroll bar, or break other
	*   commitments of its current auto-resize mode -- instead it
	*   allows its bounds to be set larger (or smaller) than the total of the
	*   column minimum or maximum, meaning, either that there
	*   will not be enough room to display all of the columns, or that the
	*   columns will not fill the <code>JTable</code>'s bounds.
	*   These respectively, result in the clipping of some columns
	*   or an area being painted in the <code>JTable</code>'s
	*   background color during painting.
	* <p>
	*   The mechanism for distributing the delta amongst the available
	*   columns is provided in a private method in the <code>JTable</code>
	*   class:
	* <pre>
	*   adjustSizes(long targetSize, final Resizable3 r, boolean inverse)
	* </pre>
	*   an explanation of which is provided in the following section.
	*   <code>Resizable3</code> is a private
	*   interface that allows any data structure containing a collection
	*   of elements with a size, preferred size, maximum size and minimum size
	*   to have its elements manipulated by the algorithm.
	* <p>
	* <H3> Distributing the delta </H3>
	* <p>
	* <H4> Overview </H4>
	* <P>
	* Call "DELTA" the difference between the target size and the
	* sum of the preferred sizes of the elements in r. The individual
	* sizes are calculated by taking the original preferred
	* sizes and adding a share of the DELTA - that share being based on
	* how far each preferred size is from its limiting bound (minimum or
	* maximum).
	* <p>
	* <H4>Definition</H4>
	* <P>
	* Call the individual constraints min[i], max[i], and pref[i].
	* <p>
	* Call their respective sums: MIN, MAX, and PREF.
	* <p>
	* Each new size will be calculated using:
	* <p>
	* <pre>
	*          size[i] = pref[i] + delta[i]
	* </pre>
	* where each individual delta[i] is calculated according to:
	* <p>
	* If (DELTA < 0) we are in shrink mode where:
	* <p>
	* <PRE>
	*                        DELTA
	*          delta[i] = ------------ * (pref[i] - min[i])
	*                     (PREF - MIN)
	* </PRE>
	* If (DELTA > 0) we are in expand mode where:
	* <p>
	* <PRE>
	*                        DELTA
	*          delta[i] = ------------ * (max[i] - pref[i])
	*                      (MAX - PREF)
	* </PRE>
	* <P>
	* The overall effect is that the total size moves that same percentage,
	* k, towards the total minimum or maximum and that percentage guarantees
	* accomodation of the required space, DELTA.
	*
	* <H4>Details</H4>
	* <P>
	* Naive evaluation of the formulae presented here would be subject to
	* the aggregated rounding errors caused by doing this operation in finite
	* precision (using ints). To deal with this, the multiplying factor above,
	* is constantly recalculated and this takes account of the rounding
	* errors in the previous iterations. The result is an algorithm that
	* produces a set of integers whose values exactly sum to the supplied
	* <code>targetSize</code>, and does so by spreading the rounding
	* errors evenly over the given elements.
	*
	* <H4>When the MAX and MIN bounds are hit</H4>
	* <P>
	* When <code>targetSize</code> is outside the [MIN, MAX] range,
	* the algorithm sets all sizes to their appropriate limiting value
	* (maximum or minimum).
	*
	*/
	@:overload override public function doLayout() : Void;
	
	/**
	* Sizes the table columns to fit the available space.
	* @deprecated As of Swing version 1.0.3,
	* replaced by <code>doLayout()</code>.
	* @see #doLayout
	*/
	@:overload public function sizeColumnsToFit(lastColumnOnly : Bool) : Void;
	
	/**
	* Obsolete as of Java 2 platform v1.4.  Please use the
	* <code>doLayout()</code> method instead.
	* @param resizingColumn    the column whose resizing made this adjustment
	*                          necessary or -1 if there is no such column
	* @see  #doLayout
	*/
	@:overload public function sizeColumnsToFit(resizingColumn : Int) : Void;
	
	/**
	* Overrides <code>JComponent</code>'s <code>getToolTipText</code>
	* method in order to allow the renderer's tips to be used
	* if it has text set.
	* <p>
	* <bold>Note:</bold> For <code>JTable</code> to properly display
	* tooltips of its renderers
	* <code>JTable</code> must be a registered component with the
	* <code>ToolTipManager</code>.
	* This is done automatically in <code>initializeLocalVars</code>,
	* but if at a later point <code>JTable</code> is told
	* <code>setToolTipText(null)</code> it will unregister the table
	* component, and no tips from renderers will display anymore.
	*
	* @see JComponent#getToolTipText
	*/
	@:overload public function getToolTipText(event : java.awt.event.MouseEvent) : String;
	
	/**
	* Sets whether editors in this JTable get the keyboard focus
	* when an editor is activated as a result of the JTable
	* forwarding keyboard events for a cell.
	* By default, this property is false, and the JTable
	* retains the focus unless the cell is clicked.
	*
	* @param surrendersFocusOnKeystroke true if the editor should get the focus
	*          when keystrokes cause the editor to be
	*          activated
	*
	*
	* @see #getSurrendersFocusOnKeystroke
	* @since 1.4
	*/
	@:require(java4) @:overload public function setSurrendersFocusOnKeystroke(surrendersFocusOnKeystroke : Bool) : Void;
	
	/**
	* Returns true if the editor should get the focus
	* when keystrokes cause the editor to be activated
	*
	* @return  true if the editor should get the focus
	*          when keystrokes cause the editor to be
	*          activated
	*
	* @see #setSurrendersFocusOnKeystroke
	* @since 1.4
	*/
	@:require(java4) @:overload public function getSurrendersFocusOnKeystroke() : Bool;
	
	/**
	* Programmatically starts editing the cell at <code>row</code> and
	* <code>column</code>, if those indices are in the valid range, and
	* the cell at those indices is editable.
	* Note that this is a convenience method for
	* <code>editCellAt(int, int, null)</code>.
	*
	* @param   row                             the row to be edited
	* @param   column                          the column to be edited
	* @return  false if for any reason the cell cannot be edited,
	*                or if the indices are invalid
	*/
	@:overload public function editCellAt(row : Int, column : Int) : Bool;
	
	/**
	* Programmatically starts editing the cell at <code>row</code> and
	* <code>column</code>, if those indices are in the valid range, and
	* the cell at those indices is editable.
	* To prevent the <code>JTable</code> from
	* editing a particular table, column or cell value, return false from
	* the <code>isCellEditable</code> method in the <code>TableModel</code>
	* interface.
	*
	* @param   row     the row to be edited
	* @param   column  the column to be edited
	* @param   e       event to pass into <code>shouldSelectCell</code>;
	*                  note that as of Java 2 platform v1.2, the call to
	*                  <code>shouldSelectCell</code> is no longer made
	* @return  false if for any reason the cell cannot be edited,
	*                or if the indices are invalid
	*/
	@:overload public function editCellAt(row : Int, column : Int, e : java.util.EventObject) : Bool;
	
	/**
	* Returns true if a cell is being edited.
	*
	* @return  true if the table is editing a cell
	* @see     #editingColumn
	* @see     #editingRow
	*/
	@:overload public function isEditing() : Bool;
	
	/**
	* Returns the component that is handling the editing session.
	* If nothing is being edited, returns null.
	*
	* @return  Component handling editing session
	*/
	@:overload public function getEditorComponent() : java.awt.Component;
	
	/**
	* Returns the index of the column that contains the cell currently
	* being edited.  If nothing is being edited, returns -1.
	*
	* @return  the index of the column that contains the cell currently
	*          being edited; returns -1 if nothing being edited
	* @see #editingRow
	*/
	@:overload public function getEditingColumn() : Int;
	
	/**
	* Returns the index of the row that contains the cell currently
	* being edited.  If nothing is being edited, returns -1.
	*
	* @return  the index of the row that contains the cell currently
	*          being edited; returns -1 if nothing being edited
	* @see #editingColumn
	*/
	@:overload public function getEditingRow() : Int;
	
	/**
	* Returns the L&F object that renders this component.
	*
	* @return the <code>TableUI</code> object that renders this component
	*/
	@:overload public function getUI() : javax.swing.plaf.TableUI;
	
	/**
	* Sets the L&F object that renders this component and repaints.
	*
	* @param ui  the TableUI L&F object
	* @see UIDefaults#getUI
	* @beaninfo
	*        bound: true
	*       hidden: true
	*    attribute: visualUpdate true
	*  description: The UI object that implements the Component's LookAndFeel.
	*/
	@:overload public function setUI(ui : javax.swing.plaf.TableUI) : Void;
	
	/**
	* Notification from the <code>UIManager</code> that the L&F has changed.
	* Replaces the current UI object with the latest version from the
	* <code>UIManager</code>.
	*
	* @see JComponent#updateUI
	*/
	@:overload public function updateUI() : Void;
	
	/**
	* Returns the suffix used to construct the name of the L&F class used to
	* render this component.
	*
	* @return the string "TableUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*/
	@:overload public function getUIClassID() : String;
	
	/**
	* Sets the data model for this table to <code>newModel</code> and registers
	* with it for listener notifications from the new data model.
	*
	* @param   dataModel        the new data source for this table
	* @exception IllegalArgumentException      if <code>newModel</code> is <code>null</code>
	* @see     #getModel
	* @beaninfo
	*  bound: true
	*  description: The model that is the source of the data for this view.
	*/
	@:overload public function setModel(dataModel : javax.swing.table.TableModel) : Void;
	
	/**
	* Returns the <code>TableModel</code> that provides the data displayed by this
	* <code>JTable</code>.
	*
	* @return  the <code>TableModel</code> that provides the data displayed by this <code>JTable</code>
	* @see     #setModel
	*/
	@:overload public function getModel() : javax.swing.table.TableModel;
	
	/**
	* Sets the column model for this table to <code>newModel</code> and registers
	* for listener notifications from the new column model. Also sets
	* the column model of the <code>JTableHeader</code> to <code>columnModel</code>.
	*
	* @param   columnModel        the new data source for this table
	* @exception IllegalArgumentException      if <code>columnModel</code> is <code>null</code>
	* @see     #getColumnModel
	* @beaninfo
	*  bound: true
	*  description: The object governing the way columns appear in the view.
	*/
	@:overload public function setColumnModel(columnModel : javax.swing.table.TableColumnModel) : Void;
	
	/**
	* Returns the <code>TableColumnModel</code> that contains all column information
	* of this table.
	*
	* @return  the object that provides the column state of the table
	* @see     #setColumnModel
	*/
	@:overload public function getColumnModel() : javax.swing.table.TableColumnModel;
	
	/**
	* Sets the row selection model for this table to <code>newModel</code>
	* and registers for listener notifications from the new selection model.
	*
	* @param   newModel        the new selection model
	* @exception IllegalArgumentException      if <code>newModel</code> is <code>null</code>
	* @see     #getSelectionModel
	* @beaninfo
	*      bound: true
	*      description: The selection model for rows.
	*/
	@:overload public function setSelectionModel(newModel : javax.swing.ListSelectionModel) : Void;
	
	/**
	* Returns the <code>ListSelectionModel</code> that is used to maintain row
	* selection state.
	*
	* @return  the object that provides row selection state, <code>null</code>
	*          if row selection is not allowed
	* @see     #setSelectionModel
	*/
	@:overload public function getSelectionModel() : javax.swing.ListSelectionModel;
	
	/**
	* <code>RowSorterListener</code> notification that the
	* <code>RowSorter</code> has changed in some way.
	*
	* @param e the <code>RowSorterEvent</code> describing the change
	* @throws NullPointerException if <code>e</code> is <code>null</code>
	* @since 1.6
	*/
	@:require(java6) @:overload public function sorterChanged(e : javax.swing.event.RowSorterEvent) : Void;
	
	/**
	* Invoked when this table's <code>TableModel</code> generates
	* a <code>TableModelEvent</code>.
	* The <code>TableModelEvent</code> should be constructed in the
	* coordinate system of the model; the appropriate mapping to the
	* view coordinate system is performed by this <code>JTable</code>
	* when it receives the event.
	* <p>
	* Application code will not use these methods explicitly, they
	* are used internally by <code>JTable</code>.
	* <p>
	* Note that as of 1.3, this method clears the selection, if any.
	*/
	@:overload public function tableChanged(e : javax.swing.event.TableModelEvent) : Void;
	
	/**
	* Invoked when a column is added to the table column model.
	* <p>
	* Application code will not use these methods explicitly, they
	* are used internally by JTable.
	*
	* @see TableColumnModelListener
	*/
	@:overload public function columnAdded(e : javax.swing.event.TableColumnModelEvent) : Void;
	
	/**
	* Invoked when a column is removed from the table column model.
	* <p>
	* Application code will not use these methods explicitly, they
	* are used internally by JTable.
	*
	* @see TableColumnModelListener
	*/
	@:overload public function columnRemoved(e : javax.swing.event.TableColumnModelEvent) : Void;
	
	/**
	* Invoked when a column is repositioned. If a cell is being
	* edited, then editing is stopped and the cell is redrawn.
	* <p>
	* Application code will not use these methods explicitly, they
	* are used internally by JTable.
	*
	* @param e   the event received
	* @see TableColumnModelListener
	*/
	@:overload public function columnMoved(e : javax.swing.event.TableColumnModelEvent) : Void;
	
	/**
	* Invoked when a column is moved due to a margin change.
	* If a cell is being edited, then editing is stopped and the cell
	* is redrawn.
	* <p>
	* Application code will not use these methods explicitly, they
	* are used internally by JTable.
	*
	* @param  e    the event received
	* @see TableColumnModelListener
	*/
	@:overload public function columnMarginChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	/**
	* Invoked when the selection model of the <code>TableColumnModel</code>
	* is changed.
	* <p>
	* Application code will not use these methods explicitly, they
	* are used internally by JTable.
	*
	* @param  e  the event received
	* @see TableColumnModelListener
	*/
	@:overload public function columnSelectionChanged(e : javax.swing.event.ListSelectionEvent) : Void;
	
	/**
	* Invoked when the row selection changes -- repaints to show the new
	* selection.
	* <p>
	* Application code will not use these methods explicitly, they
	* are used internally by JTable.
	*
	* @param e   the event received
	* @see ListSelectionListener
	*/
	@:overload public function valueChanged(e : javax.swing.event.ListSelectionEvent) : Void;
	
	/**
	* Invoked when editing is finished. The changes are saved and the
	* editor is discarded.
	* <p>
	* Application code will not use these methods explicitly, they
	* are used internally by JTable.
	*
	* @param  e  the event received
	* @see CellEditorListener
	*/
	@:overload public function editingStopped(e : javax.swing.event.ChangeEvent) : Void;
	
	/**
	* Invoked when editing is canceled. The editor object is discarded
	* and the cell is rendered once again.
	* <p>
	* Application code will not use these methods explicitly, they
	* are used internally by JTable.
	*
	* @param  e  the event received
	* @see CellEditorListener
	*/
	@:overload public function editingCanceled(e : javax.swing.event.ChangeEvent) : Void;
	
	/**
	* Sets the preferred size of the viewport for this table.
	*
	* @param size  a <code>Dimension</code> object specifying the <code>preferredSize</code> of a
	*              <code>JViewport</code> whose view is this table
	* @see Scrollable#getPreferredScrollableViewportSize
	* @beaninfo
	* description: The preferred size of the viewport.
	*/
	@:overload public function setPreferredScrollableViewportSize(size : java.awt.Dimension) : Void;
	
	/**
	* Returns the preferred size of the viewport for this table.
	*
	* @return a <code>Dimension</code> object containing the <code>preferredSize</code> of the <code>JViewport</code>
	*         which displays this table
	* @see Scrollable#getPreferredScrollableViewportSize
	*/
	@:overload public function getPreferredScrollableViewportSize() : java.awt.Dimension;
	
	/**
	* Returns the scroll increment (in pixels) that completely exposes one new
	* row or column (depending on the orientation).
	* <p>
	* This method is called each time the user requests a unit scroll.
	*
	* @param visibleRect the view area visible within the viewport
	* @param orientation either <code>SwingConstants.VERTICAL</code>
	*                  or <code>SwingConstants.HORIZONTAL</code>
	* @param direction less than zero to scroll up/left,
	*                  greater than zero for down/right
	* @return the "unit" increment for scrolling in the specified direction
	* @see Scrollable#getScrollableUnitIncrement
	*/
	@:overload public function getScrollableUnitIncrement(visibleRect : java.awt.Rectangle, orientation : Int, direction : Int) : Int;
	
	/**
	* Returns <code>visibleRect.height</code> or
	* <code>visibleRect.width</code>,
	* depending on this table's orientation.  Note that as of Swing 1.1.1
	* (Java 2 v 1.2.2) the value
	* returned will ensure that the viewport is cleanly aligned on
	* a row boundary.
	*
	* @return <code>visibleRect.height</code> or
	*                                  <code>visibleRect.width</code>
	*                                  per the orientation
	* @see Scrollable#getScrollableBlockIncrement
	*/
	@:overload public function getScrollableBlockIncrement(visibleRect : java.awt.Rectangle, orientation : Int, direction : Int) : Int;
	
	/**
	* Returns false if <code>autoResizeMode</code> is set to
	* <code>AUTO_RESIZE_OFF</code>, which indicates that the
	* width of the viewport does not determine the width
	* of the table.  Otherwise returns true.
	*
	* @return false if <code>autoResizeMode</code> is set
	*   to <code>AUTO_RESIZE_OFF</code>, otherwise returns true
	* @see Scrollable#getScrollableTracksViewportWidth
	*/
	@:overload public function getScrollableTracksViewportWidth() : Bool;
	
	/**
	* Returns {@code false} to indicate that the height of the viewport does
	* not determine the height of the table, unless
	* {@code getFillsViewportHeight} is {@code true} and the preferred height
	* of the table is smaller than the viewport's height.
	*
	* @return {@code false} unless {@code getFillsViewportHeight} is
	*         {@code true} and the table needs to be stretched to fill
	*         the viewport
	* @see Scrollable#getScrollableTracksViewportHeight
	* @see #setFillsViewportHeight
	* @see #getFillsViewportHeight
	*/
	@:overload public function getScrollableTracksViewportHeight() : Bool;
	
	/**
	* Sets whether or not this table is always made large enough
	* to fill the height of an enclosing viewport. If the preferred
	* height of the table is smaller than the viewport, then the table
	* will be stretched to fill the viewport. In other words, this
	* ensures the table is never smaller than the viewport.
	* The default for this property is {@code false}.
	*
	* @param fillsViewportHeight whether or not this table is always
	*        made large enough to fill the height of an enclosing
	*        viewport
	* @see #getFillsViewportHeight
	* @see #getScrollableTracksViewportHeight
	* @since 1.6
	* @beaninfo
	*      bound: true
	*      description: Whether or not this table is always made large enough
	*                   to fill the height of an enclosing viewport
	*/
	@:require(java6) @:overload public function setFillsViewportHeight(fillsViewportHeight : Bool) : Void;
	
	/**
	* Returns whether or not this table is always made large enough
	* to fill the height of an enclosing viewport.
	*
	* @return whether or not this table is always made large enough
	*         to fill the height of an enclosing viewport
	* @see #setFillsViewportHeight
	* @since 1.6
	*/
	@:require(java6) @:overload public function getFillsViewportHeight() : Bool;
	
	@:overload private function processKeyBinding(ks : javax.swing.KeyStroke, e : java.awt.event.KeyEvent, condition : Int, pressed : Bool) : Bool;
	
	/**
	* Creates default cell renderers for objects, numbers, doubles, dates,
	* booleans, and icons.
	* @see javax.swing.table.DefaultTableCellRenderer
	*
	*/
	@:overload private function createDefaultRenderers() : Void;
	
	/**
	* Creates default cell editors for objects, numbers, and boolean values.
	* @see DefaultCellEditor
	*/
	@:overload private function createDefaultEditors() : Void;
	
	/**
	* Initializes table properties to their default values.
	*/
	@:overload private function initializeLocalVars() : Void;
	
	/**
	* Returns the default table model object, which is
	* a <code>DefaultTableModel</code>.  A subclass can override this
	* method to return a different table model object.
	*
	* @return the default table model object
	* @see javax.swing.table.DefaultTableModel
	*/
	@:overload private function createDefaultDataModel() : javax.swing.table.TableModel;
	
	/**
	* Returns the default column model object, which is
	* a <code>DefaultTableColumnModel</code>.  A subclass can override this
	* method to return a different column model object.
	*
	* @return the default column model object
	* @see javax.swing.table.DefaultTableColumnModel
	*/
	@:overload private function createDefaultColumnModel() : javax.swing.table.TableColumnModel;
	
	/**
	* Returns the default selection model object, which is
	* a <code>DefaultListSelectionModel</code>.  A subclass can override this
	* method to return a different selection model object.
	*
	* @return the default selection model object
	* @see javax.swing.DefaultListSelectionModel
	*/
	@:overload private function createDefaultSelectionModel() : javax.swing.ListSelectionModel;
	
	/**
	* Returns the default table header object, which is
	* a <code>JTableHeader</code>.  A subclass can override this
	* method to return a different table header object.
	*
	* @return the default table header object
	* @see javax.swing.table.JTableHeader
	*/
	@:overload private function createDefaultTableHeader() : javax.swing.table.JTableHeader;
	
	/**
	* Equivalent to <code>revalidate</code> followed by <code>repaint</code>.
	*/
	@:overload private function resizeAndRepaint() : Void;
	
	/**
	* Returns the active cell editor, which is {@code null} if the table
	* is not currently editing.
	*
	* @return the {@code TableCellEditor} that does the editing,
	*         or {@code null} if the table is not currently editing.
	* @see #cellEditor
	* @see #getCellEditor(int, int)
	*/
	@:overload public function getCellEditor() : javax.swing.table.TableCellEditor;
	
	/**
	* Sets the active cell editor.
	*
	* @param anEditor the active cell editor
	* @see #cellEditor
	* @beaninfo
	*  bound: true
	*  description: The table's active cell editor.
	*/
	@:overload public function setCellEditor(anEditor : javax.swing.table.TableCellEditor) : Void;
	
	/**
	* Sets the <code>editingColumn</code> variable.
	* @param aColumn  the column of the cell to be edited
	*
	* @see #editingColumn
	*/
	@:overload public function setEditingColumn(aColumn : Int) : Void;
	
	/**
	* Sets the <code>editingRow</code> variable.
	* @param aRow  the row of the cell to be edited
	*
	* @see #editingRow
	*/
	@:overload public function setEditingRow(aRow : Int) : Void;
	
	/**
	* Returns an appropriate renderer for the cell specified by this row and
	* column. If the <code>TableColumn</code> for this column has a non-null
	* renderer, returns that.  If not, finds the class of the data in
	* this column (using <code>getColumnClass</code>)
	* and returns the default renderer for this type of data.
	* <p>
	* <b>Note:</b>
	* Throughout the table package, the internal implementations always
	* use this method to provide renderers so that this default behavior
	* can be safely overridden by a subclass.
	*
	* @param row       the row of the cell to render, where 0 is the first row
	* @param column    the column of the cell to render,
	*                  where 0 is the first column
	* @return the assigned renderer; if <code>null</code>
	*                  returns the default renderer
	*                  for this type of object
	* @see javax.swing.table.DefaultTableCellRenderer
	* @see javax.swing.table.TableColumn#setCellRenderer
	* @see #setDefaultRenderer
	*/
	@:overload public function getCellRenderer(row : Int, column : Int) : javax.swing.table.TableCellRenderer;
	
	/**
	* Prepares the renderer by querying the data model for the
	* value and selection state
	* of the cell at <code>row</code>, <code>column</code>.
	* Returns the component (may be a <code>Component</code>
	* or a <code>JComponent</code>) under the event location.
	* <p>
	* During a printing operation, this method will configure the
	* renderer without indicating selection or focus, to prevent
	* them from appearing in the printed output. To do other
	* customizations based on whether or not the table is being
	* printed, you can check the value of
	* {@link javax.swing.JComponent#isPaintingForPrint()}, either here
	* or within custom renderers.
	* <p>
	* <b>Note:</b>
	* Throughout the table package, the internal implementations always
	* use this method to prepare renderers so that this default behavior
	* can be safely overridden by a subclass.
	*
	* @param renderer  the <code>TableCellRenderer</code> to prepare
	* @param row       the row of the cell to render, where 0 is the first row
	* @param column    the column of the cell to render,
	*                  where 0 is the first column
	* @return          the <code>Component</code> under the event location
	*/
	@:overload public function prepareRenderer(renderer : javax.swing.table.TableCellRenderer, row : Int, column : Int) : java.awt.Component;
	
	/**
	* Returns an appropriate editor for the cell specified by
	* <code>row</code> and <code>column</code>. If the
	* <code>TableColumn</code> for this column has a non-null editor,
	* returns that.  If not, finds the class of the data in this
	* column (using <code>getColumnClass</code>)
	* and returns the default editor for this type of data.
	* <p>
	* <b>Note:</b>
	* Throughout the table package, the internal implementations always
	* use this method to provide editors so that this default behavior
	* can be safely overridden by a subclass.
	*
	* @param row       the row of the cell to edit, where 0 is the first row
	* @param column    the column of the cell to edit,
	*                  where 0 is the first column
	* @return          the editor for this cell;
	*                  if <code>null</code> return the default editor for
	*                  this type of cell
	* @see DefaultCellEditor
	*/
	@:overload public function getCellEditor(row : Int, column : Int) : javax.swing.table.TableCellEditor;
	
	/**
	* Prepares the editor by querying the data model for the value and
	* selection state of the cell at <code>row</code>, <code>column</code>.
	* <p>
	* <b>Note:</b>
	* Throughout the table package, the internal implementations always
	* use this method to prepare editors so that this default behavior
	* can be safely overridden by a subclass.
	*
	* @param editor  the <code>TableCellEditor</code> to set up
	* @param row     the row of the cell to edit,
	*                where 0 is the first row
	* @param column  the column of the cell to edit,
	*                where 0 is the first column
	* @return the <code>Component</code> being edited
	*/
	@:overload public function prepareEditor(editor : javax.swing.table.TableCellEditor, row : Int, column : Int) : java.awt.Component;
	
	/**
	* Discards the editor object and frees the real estate it used for
	* cell rendering.
	*/
	@:overload public function removeEditor() : Void;
	
	/**
	* Returns a string representation of this table. This method
	* is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this table
	*/
	@:overload override private function paramString() : String;
	
	/**
	* A convenience method that displays a printing dialog, and then prints
	* this <code>JTable</code> in mode <code>PrintMode.FIT_WIDTH</code>,
	* with no header or footer text. A modal progress dialog, with an abort
	* option, will be shown for the duration of printing.
	* <p>
	* Note: In headless mode, no dialogs are shown and printing
	* occurs on the default printer.
	*
	* @return true, unless printing is cancelled by the user
	* @throws SecurityException if this thread is not allowed to
	*                           initiate a print job request
	* @throws PrinterException if an error in the print system causes the job
	*                          to be aborted
	* @see #print(JTable.PrintMode, MessageFormat, MessageFormat,
	*             boolean, PrintRequestAttributeSet, boolean, PrintService)
	* @see #getPrintable
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function print() : Bool;
	
	/**
	* A convenience method that displays a printing dialog, and then prints
	* this <code>JTable</code> in the given printing mode,
	* with no header or footer text. A modal progress dialog, with an abort
	* option, will be shown for the duration of printing.
	* <p>
	* Note: In headless mode, no dialogs are shown and printing
	* occurs on the default printer.
	*
	* @param  printMode        the printing mode that the printable should use
	* @return true, unless printing is cancelled by the user
	* @throws SecurityException if this thread is not allowed to
	*                           initiate a print job request
	* @throws PrinterException if an error in the print system causes the job
	*                          to be aborted
	* @see #print(JTable.PrintMode, MessageFormat, MessageFormat,
	*             boolean, PrintRequestAttributeSet, boolean, PrintService)
	* @see #getPrintable
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function print(printMode : javax.swing.JTable.JTable_PrintMode) : Bool;
	
	/**
	* A convenience method that displays a printing dialog, and then prints
	* this <code>JTable</code> in the given printing mode,
	* with the specified header and footer text. A modal progress dialog,
	* with an abort option, will be shown for the duration of printing.
	* <p>
	* Note: In headless mode, no dialogs are shown and printing
	* occurs on the default printer.
	*
	* @param  printMode        the printing mode that the printable should use
	* @param  headerFormat     a <code>MessageFormat</code> specifying the text
	*                          to be used in printing a header,
	*                          or null for none
	* @param  footerFormat     a <code>MessageFormat</code> specifying the text
	*                          to be used in printing a footer,
	*                          or null for none
	* @return true, unless printing is cancelled by the user
	* @throws SecurityException if this thread is not allowed to
	*                           initiate a print job request
	* @throws PrinterException if an error in the print system causes the job
	*                          to be aborted
	* @see #print(JTable.PrintMode, MessageFormat, MessageFormat,
	*             boolean, PrintRequestAttributeSet, boolean, PrintService)
	* @see #getPrintable
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function print(printMode : javax.swing.JTable.JTable_PrintMode, headerFormat : java.text.MessageFormat, footerFormat : java.text.MessageFormat) : Bool;
	
	/**
	* Prints this table, as specified by the fully featured
	* {@link #print(JTable.PrintMode, MessageFormat, MessageFormat,
	* boolean, PrintRequestAttributeSet, boolean, PrintService) print}
	* method, with the default printer specified as the print service.
	*
	* @param  printMode        the printing mode that the printable should use
	* @param  headerFormat     a <code>MessageFormat</code> specifying the text
	*                          to be used in printing a header,
	*                          or <code>null</code> for none
	* @param  footerFormat     a <code>MessageFormat</code> specifying the text
	*                          to be used in printing a footer,
	*                          or <code>null</code> for none
	* @param  showPrintDialog  whether or not to display a print dialog
	* @param  attr             a <code>PrintRequestAttributeSet</code>
	*                          specifying any printing attributes,
	*                          or <code>null</code> for none
	* @param  interactive      whether or not to print in an interactive mode
	* @return true, unless printing is cancelled by the user
	* @throws HeadlessException if the method is asked to show a printing
	*                           dialog or run interactively, and
	*                           <code>GraphicsEnvironment.isHeadless</code>
	*                           returns <code>true</code>
	* @throws SecurityException if this thread is not allowed to
	*                           initiate a print job request
	* @throws PrinterException if an error in the print system causes the job
	*                          to be aborted
	* @see #print(JTable.PrintMode, MessageFormat, MessageFormat,
	*             boolean, PrintRequestAttributeSet, boolean, PrintService)
	* @see #getPrintable
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function print(printMode : javax.swing.JTable.JTable_PrintMode, headerFormat : java.text.MessageFormat, footerFormat : java.text.MessageFormat, showPrintDialog : Bool, attr : javax.print.attribute.PrintRequestAttributeSet, interactive : Bool) : Bool;
	
	/**
	* Prints this <code>JTable</code>. Takes steps that the majority of
	* developers would take in order to print a <code>JTable</code>.
	* In short, it prepares the table, calls <code>getPrintable</code> to
	* fetch an appropriate <code>Printable</code>, and then sends it to the
	* printer.
	* <p>
	* A <code>boolean</code> parameter allows you to specify whether or not
	* a printing dialog is displayed to the user. When it is, the user may
	* use the dialog to change the destination printer or printing attributes,
	* or even to cancel the print. Another two parameters allow for a
	* <code>PrintService</code> and printing attributes to be specified.
	* These parameters can be used either to provide initial values for the
	* print dialog, or to specify values when the dialog is not shown.
	* <p>
	* A second <code>boolean</code> parameter allows you to specify whether
	* or not to perform printing in an interactive mode. If <code>true</code>,
	* a modal progress dialog, with an abort option, is displayed for the
	* duration of printing . This dialog also prevents any user action which
	* may affect the table. However, it can not prevent the table from being
	* modified by code (for example, another thread that posts updates using
	* <code>SwingUtilities.invokeLater</code>). It is therefore the
	* responsibility of the developer to ensure that no other code modifies
	* the table in any way during printing (invalid modifications include
	* changes in: size, renderers, or underlying data). Printing behavior is
	* undefined when the table is changed during printing.
	* <p>
	* If <code>false</code> is specified for this parameter, no dialog will
	* be displayed and printing will begin immediately on the event-dispatch
	* thread. This blocks any other events, including repaints, from being
	* processed until printing is complete. Although this effectively prevents
	* the table from being changed, it doesn't provide a good user experience.
	* For this reason, specifying <code>false</code> is only recommended when
	* printing from an application with no visible GUI.
	* <p>
	* Note: Attempting to show the printing dialog or run interactively, while
	* in headless mode, will result in a <code>HeadlessException</code>.
	* <p>
	* Before fetching the printable, this method will gracefully terminate
	* editing, if necessary, to prevent an editor from showing in the printed
	* result. Additionally, <code>JTable</code> will prepare its renderers
	* during printing such that selection and focus are not indicated.
	* As far as customizing further how the table looks in the printout,
	* developers can provide custom renderers or paint code that conditionalize
	* on the value of {@link javax.swing.JComponent#isPaintingForPrint()}.
	* <p>
	* See {@link #getPrintable} for more description on how the table is
	* printed.
	*
	* @param  printMode        the printing mode that the printable should use
	* @param  headerFormat     a <code>MessageFormat</code> specifying the text
	*                          to be used in printing a header,
	*                          or <code>null</code> for none
	* @param  footerFormat     a <code>MessageFormat</code> specifying the text
	*                          to be used in printing a footer,
	*                          or <code>null</code> for none
	* @param  showPrintDialog  whether or not to display a print dialog
	* @param  attr             a <code>PrintRequestAttributeSet</code>
	*                          specifying any printing attributes,
	*                          or <code>null</code> for none
	* @param  interactive      whether or not to print in an interactive mode
	* @param  service          the destination <code>PrintService</code>,
	*                          or <code>null</code> to use the default printer
	* @return true, unless printing is cancelled by the user
	* @throws HeadlessException if the method is asked to show a printing
	*                           dialog or run interactively, and
	*                           <code>GraphicsEnvironment.isHeadless</code>
	*                           returns <code>true</code>
	* @throws  SecurityException if a security manager exists and its
	*          {@link java.lang.SecurityManager#checkPrintJobAccess}
	*          method disallows this thread from creating a print job request
	* @throws PrinterException if an error in the print system causes the job
	*                          to be aborted
	* @see #getPrintable
	* @see java.awt.GraphicsEnvironment#isHeadless
	*
	* @since 1.6
	*/
	@:require(java6) @:overload public function print(printMode : javax.swing.JTable.JTable_PrintMode, headerFormat : java.text.MessageFormat, footerFormat : java.text.MessageFormat, showPrintDialog : Bool, attr : javax.print.attribute.PrintRequestAttributeSet, interactive : Bool, service : javax.print.PrintService) : Bool;
	
	/**
	* Return a <code>Printable</code> for use in printing this JTable.
	* <p>
	* This method is meant for those wishing to customize the default
	* <code>Printable</code> implementation used by <code>JTable</code>'s
	* <code>print</code> methods. Developers wanting simply to print the table
	* should use one of those methods directly.
	* <p>
	* The <code>Printable</code> can be requested in one of two printing modes.
	* In both modes, it spreads table rows naturally in sequence across
	* multiple pages, fitting as many rows as possible per page.
	* <code>PrintMode.NORMAL</code> specifies that the table be
	* printed at its current size. In this mode, there may be a need to spread
	* columns across pages in a similar manner to that of the rows. When the
	* need arises, columns are distributed in an order consistent with the
	* table's <code>ComponentOrientation</code>.
	* <code>PrintMode.FIT_WIDTH</code> specifies that the output be
	* scaled smaller, if necessary, to fit the table's entire width
	* (and thereby all columns) on each page. Width and height are scaled
	* equally, maintaining the aspect ratio of the output.
	* <p>
	* The <code>Printable</code> heads the portion of table on each page
	* with the appropriate section from the table's <code>JTableHeader</code>,
	* if it has one.
	* <p>
	* Header and footer text can be added to the output by providing
	* <code>MessageFormat</code> arguments. The printing code requests
	* Strings from the formats, providing a single item which may be included
	* in the formatted string: an <code>Integer</code> representing the current
	* page number.
	* <p>
	* You are encouraged to read the documentation for
	* <code>MessageFormat</code> as some characters, such as single-quote,
	* are special and need to be escaped.
	* <p>
	* Here's an example of creating a <code>MessageFormat</code> that can be
	* used to print "Duke's Table: Page - " and the current page number:
	* <p>
	* <pre>
	*     // notice the escaping of the single quote
	*     // notice how the page number is included with "{0}"
	*     MessageFormat format = new MessageFormat("Duke''s Table: Page - {0}");
	* </pre>
	* <p>
	* The <code>Printable</code> constrains what it draws to the printable
	* area of each page that it prints. Under certain circumstances, it may
	* find it impossible to fit all of a page's content into that area. In
	* these cases the output may be clipped, but the implementation
	* makes an effort to do something reasonable. Here are a few situations
	* where this is known to occur, and how they may be handled by this
	* particular implementation:
	* <ul>
	*   <li>In any mode, when the header or footer text is too wide to fit
	*       completely in the printable area -- print as much of the text as
	*       possible starting from the beginning, as determined by the table's
	*       <code>ComponentOrientation</code>.
	*   <li>In any mode, when a row is too tall to fit in the
	*       printable area -- print the upper-most portion of the row
	*       and paint no lower border on the table.
	*   <li>In <code>PrintMode.NORMAL</code> when a column
	*       is too wide to fit in the printable area -- print the center
	*       portion of the column and leave the left and right borders
	*       off the table.
	* </ul>
	* <p>
	* It is entirely valid for this <code>Printable</code> to be wrapped
	* inside another in order to create complex reports and documents. You may
	* even request that different pages be rendered into different sized
	* printable areas. The implementation must be prepared to handle this
	* (possibly by doing its layout calculations on the fly). However,
	* providing different heights to each page will likely not work well
	* with <code>PrintMode.NORMAL</code> when it has to spread columns
	* across pages.
	* <p>
	* As far as customizing how the table looks in the printed result,
	* <code>JTable</code> itself will take care of hiding the selection
	* and focus during printing. For additional customizations, your
	* renderers or painting code can customize the look based on the value
	* of {@link javax.swing.JComponent#isPaintingForPrint()}
	* <p>
	* Also, <i>before</i> calling this method you may wish to <i>first</i>
	* modify the state of the table, such as to cancel cell editing or
	* have the user size the table appropriately. However, you must not
	* modify the state of the table <i>after</i> this <code>Printable</code>
	* has been fetched (invalid modifications include changes in size or
	* underlying data). The behavior of the returned <code>Printable</code>
	* is undefined once the table has been changed.
	*
	* @param  printMode     the printing mode that the printable should use
	* @param  headerFormat  a <code>MessageFormat</code> specifying the text to
	*                       be used in printing a header, or null for none
	* @param  footerFormat  a <code>MessageFormat</code> specifying the text to
	*                       be used in printing a footer, or null for none
	* @return a <code>Printable</code> for printing this JTable
	* @see #print(JTable.PrintMode, MessageFormat, MessageFormat,
	*             boolean, PrintRequestAttributeSet, boolean)
	* @see Printable
	* @see PrinterJob
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function getPrintable(printMode : javax.swing.JTable.JTable_PrintMode, headerFormat : java.text.MessageFormat, footerFormat : java.text.MessageFormat) : java.awt.print.Printable;
	
	/**
	* Gets the AccessibleContext associated with this JTable.
	* For tables, the AccessibleContext takes the form of an
	* AccessibleJTable.
	* A new AccessibleJTable instance is created if necessary.
	*
	* @return an AccessibleJTable that serves as the
	*         AccessibleContext of this JTable
	*/
	@:overload public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* Printing modes, used in printing <code>JTable</code>s.
*
* @see #print(JTable.PrintMode, MessageFormat, MessageFormat,
*             boolean, PrintRequestAttributeSet, boolean)
* @see #getPrintable
* @since 1.5
*/
@:require(java5) @:native('javax$swing$JTable$PrintMode') extern enum JTable_PrintMode
{
	/**
	* Printing mode that prints the table at its current size,
	* spreading both columns and rows across multiple pages if necessary.
	*/
	NORMAL;
	/**
	* Printing mode that scales the output smaller, if necessary,
	* to fit the table's entire width (and thereby all columns) on each page;
	* Rows are spread across multiple pages as necessary.
	*/
	FIT_WIDTH;
	
}

/**
* A subclass of <code>TransferHandler.DropLocation</code> representing
* a drop location for a <code>JTable</code>.
*
* @see #getDropLocation
* @since 1.6
*/
@:require(java6) @:native('javax$swing$JTable$DropLocation') extern class JTable_DropLocation extends javax.swing.TransferHandler.TransferHandler_DropLocation
{
	/**
	* Returns the row index where a dropped item should be placed in the
	* table. Interpretation of the value depends on the return of
	* <code>isInsertRow()</code>. If that method returns
	* <code>true</code> this value indicates the index where a new
	* row should be inserted. Otherwise, it represents the value
	* of an existing row on which the data was dropped. This index is
	* in terms of the view.
	* <p>
	* <code>-1</code> indicates that the drop occurred over empty space,
	* and no row could be calculated.
	*
	* @return the drop row
	*/
	@:overload public function getRow() : Int;
	
	/**
	* Returns the column index where a dropped item should be placed in the
	* table. Interpretation of the value depends on the return of
	* <code>isInsertColumn()</code>. If that method returns
	* <code>true</code> this value indicates the index where a new
	* column should be inserted. Otherwise, it represents the value
	* of an existing column on which the data was dropped. This index is
	* in terms of the view.
	* <p>
	* <code>-1</code> indicates that the drop occurred over empty space,
	* and no column could be calculated.
	*
	* @return the drop row
	*/
	@:overload public function getColumn() : Int;
	
	/**
	* Returns whether or not this location represents an insert
	* of a row.
	*
	* @return whether or not this is an insert row
	*/
	@:overload public function isInsertRow() : Bool;
	
	/**
	* Returns whether or not this location represents an insert
	* of a column.
	*
	* @return whether or not this is an insert column
	*/
	@:overload public function isInsertColumn() : Bool;
	
	/**
	* Returns a string representation of this drop location.
	* This method is intended to be used for debugging purposes,
	* and the content and format of the returned string may vary
	* between implementations.
	*
	* @return a string representation of this drop location
	*/
	@:overload override public function toString() : String;
	
	
}
@:native('javax$swing$JTable$Resizable2') @:internal extern interface JTable_Resizable2
{
	@:overload public function getElementCount() : Int;
	
	@:overload public function getLowerBoundAt(i : Int) : Int;
	
	@:overload public function getUpperBoundAt(i : Int) : Int;
	
	@:overload public function setSizeAt(newSize : Int, i : Int) : Void;
	
	
}
@:native('javax$swing$JTable$Resizable3') @:internal extern interface JTable_Resizable3 extends javax.swing.JTable.JTable_Resizable2
{
	@:overload public function getMidPointAt(i : Int) : Int;
	
	
}
/**
* SortManager provides support for managing the selection and variable
* row heights when sorting is enabled. This information is encapsulated
* into a class to avoid bulking up JTable.
*/
@:native('javax$swing$JTable$SortManager') @:internal extern class JTable_SortManager
{
	/**
	* Disposes any resources used by this SortManager.
	*/
	@:overload public function dispose() : Void;
	
	/**
	* Sets the height for a row at a specified index.
	*/
	@:overload public function setViewRowHeight(viewIndex : Int, rowHeight : Int) : Void;
	
	/**
	* Invoked when the underlying model has completely changed.
	*/
	@:overload public function allChanged() : Void;
	
	/**
	* Invoked when the selection, on the view, has changed.
	*/
	@:overload public function viewSelectionChanged(e : javax.swing.event.ListSelectionEvent) : Void;
	
	/**
	* Invoked when either the table model has changed, or the RowSorter
	* has changed. This is invoked prior to notifying the sorter of the
	* change.
	*/
	@:overload public function prepareForChange(sortEvent : javax.swing.event.RowSorterEvent, change : javax.swing.JTable.JTable_ModelChange) : Void;
	
	/**
	* Inovked when either the table has changed or the sorter has changed
	* and after the sorter has been notified. If necessary this will
	* reapply the selection and variable row heights.
	*/
	@:overload public function processChange(sortEvent : javax.swing.event.RowSorterEvent, change : javax.swing.JTable.JTable_ModelChange, sorterChanged : Bool) : Void;
	
	
}
/**
* ModelChange is used when sorting to restore state, it corresponds
* to data from a TableModelEvent.  The values are precalculated as
* they are used extensively.
*/
@:native('javax$swing$JTable$ModelChange') @:internal extern class JTable_ModelChange
{
	
}
/**
* Default Renderers
**/
@:native('javax$swing$JTable$NumberRenderer') @:internal extern class JTable_NumberRenderer extends javax.swing.table.DefaultTableCellRenderer.DefaultTableCellRenderer_UIResource
{
	@:overload public function new() : Void;
	
	
}
@:native('javax$swing$JTable$DoubleRenderer') @:internal extern class JTable_DoubleRenderer extends javax.swing.JTable.JTable_NumberRenderer
{
	@:overload public function new() : Void;
	
	@:overload public function setValue(value : Dynamic) : Void;
	
	
}
@:native('javax$swing$JTable$DateRenderer') @:internal extern class JTable_DateRenderer extends javax.swing.table.DefaultTableCellRenderer.DefaultTableCellRenderer_UIResource
{
	@:overload public function new() : Void;
	
	@:overload public function setValue(value : Dynamic) : Void;
	
	
}
@:native('javax$swing$JTable$IconRenderer') @:internal extern class JTable_IconRenderer extends javax.swing.table.DefaultTableCellRenderer.DefaultTableCellRenderer_UIResource
{
	@:overload public function new() : Void;
	
	@:overload public function setValue(value : Dynamic) : Void;
	
	
}
@:native('javax$swing$JTable$BooleanRenderer') @:internal extern class JTable_BooleanRenderer extends javax.swing.JCheckBox implements javax.swing.table.TableCellRenderer implements javax.swing.plaf.UIResource
{
	@:overload public function new() : Void;
	
	@:overload public function getTableCellRendererComponent(table : javax.swing.JTable, value : Dynamic, isSelected : Bool, hasFocus : Bool, row : Int, column : Int) : java.awt.Component;
	
	
}
/**
* Default Editors
*/
@:native('javax$swing$JTable$GenericEditor') @:internal extern class JTable_GenericEditor extends javax.swing.DefaultCellEditor
{
	@:overload public function new() : Void;
	
	@:overload override public function stopCellEditing() : Bool;
	
	@:overload override public function getTableCellEditorComponent(table : javax.swing.JTable, value : Dynamic, isSelected : Bool, row : Int, column : Int) : java.awt.Component;
	
	@:overload override public function getCellEditorValue() : Dynamic;
	
	
}
@:native('javax$swing$JTable$NumberEditor') @:internal extern class JTable_NumberEditor extends javax.swing.JTable.JTable_GenericEditor
{
	@:overload public function new() : Void;
	
	
}
@:native('javax$swing$JTable$BooleanEditor') @:internal extern class JTable_BooleanEditor extends javax.swing.DefaultCellEditor
{
	@:overload public function new() : Void;
	
	
}
@:native('javax$swing$JTable$CellEditorRemover') @:internal extern class JTable_CellEditorRemover implements java.beans.PropertyChangeListener
{
	@:overload public function new(fm : java.awt.KeyboardFocusManager) : Void;
	
	@:overload public function propertyChange(ev : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* A <code>Printable</code> implementation that wraps another
* <code>Printable</code>, making it safe for printing on another thread.
*/
@:native('javax$swing$JTable$ThreadSafePrintable') @:internal extern class JTable_ThreadSafePrintable implements java.awt.print.Printable
{
	/**
	* Construct a <code>ThreadSafePrintable</code> around the given
	* delegate.
	*
	* @param printDelegate the <code>Printable</code> to delegate to
	*/
	@:overload public function new(printDelegate : java.awt.print.Printable) : Void;
	
	/**
	* Prints the specified page into the given {@link Graphics}
	* context, in the specified format.
	* <p>
	* Regardless of what thread this method is called on, all calls into
	* the delegate will be done on the event-dispatch thread.
	*
	* @param   graphics    the context into which the page is drawn
	* @param   pageFormat  the size and orientation of the page being drawn
	* @param   pageIndex   the zero based index of the page to be drawn
	* @return  PAGE_EXISTS if the page is rendered successfully, or
	*          NO_SUCH_PAGE if a non-existent page index is specified
	* @throws  PrinterException if an error causes printing to be aborted
	*/
	@:overload public function print(graphics : java.awt.Graphics, pageFormat : java.awt.print.PageFormat, pageIndex : Int) : Int;
	
	
}
/**
* This class implements accessibility support for the
* <code>JTable</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to table user-interface elements.
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
@:native('javax$swing$JTable$AccessibleJTable') extern class JTable_AccessibleJTable extends javax.swing.JComponent.JComponent_AccessibleJComponent implements javax.accessibility.AccessibleSelection implements javax.swing.event.ListSelectionListener implements javax.swing.event.TableModelListener implements javax.swing.event.TableColumnModelListener implements javax.swing.event.CellEditorListener implements java.beans.PropertyChangeListener implements javax.accessibility.AccessibleExtendedTable
{
	/**
	* AccessibleJTable constructor
	*
	* @since 1.5
	*/
	@:require(java5) @:overload private function new() : Void;
	
	/**
	* Track changes to selection model, column model, etc. so as to
	* be able to re-place listeners on those in order to pass on
	* information to the Accessibility PropertyChange mechanism
	*/
	@:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	/**
	* Track changes to the table contents
	*/
	@:overload public function tableChanged(e : javax.swing.event.TableModelEvent) : Void;
	
	/**
	* Track changes to the table contents (row insertions)
	*/
	@:overload public function tableRowsInserted(e : javax.swing.event.TableModelEvent) : Void;
	
	/**
	* Track changes to the table contents (row deletions)
	*/
	@:overload public function tableRowsDeleted(e : javax.swing.event.TableModelEvent) : Void;
	
	/**
	* Track changes to the table contents (column insertions)
	*/
	@:overload public function columnAdded(e : javax.swing.event.TableColumnModelEvent) : Void;
	
	/**
	* Track changes to the table contents (column deletions)
	*/
	@:overload public function columnRemoved(e : javax.swing.event.TableColumnModelEvent) : Void;
	
	/**
	* Track changes of a column repositioning.
	*
	* @see TableColumnModelListener
	*/
	@:overload public function columnMoved(e : javax.swing.event.TableColumnModelEvent) : Void;
	
	/**
	* Track changes of a column moving due to margin changes.
	*
	* @see TableColumnModelListener
	*/
	@:overload public function columnMarginChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	/**
	* Track that the selection model of the TableColumnModel changed.
	*
	* @see TableColumnModelListener
	*/
	@:overload public function columnSelectionChanged(e : javax.swing.event.ListSelectionEvent) : Void;
	
	/**
	* Track changes to a cell's contents.
	*
	* Invoked when editing is finished. The changes are saved, the
	* editor object is discarded, and the cell is rendered once again.
	*
	* @see CellEditorListener
	*/
	@:overload public function editingStopped(e : javax.swing.event.ChangeEvent) : Void;
	
	/**
	* Invoked when editing is canceled. The editor object is discarded
	* and the cell is rendered once again.
	*
	* @see CellEditorListener
	*/
	@:overload public function editingCanceled(e : javax.swing.event.ChangeEvent) : Void;
	
	/**
	* Track changes to table cell selections
	*/
	@:overload public function valueChanged(e : javax.swing.event.ListSelectionEvent) : Void;
	
	/**
	* Get the AccessibleSelection associated with this object.  In the
	* implementation of the Java Accessibility API for this class,
	* return this object, which is responsible for implementing the
	* AccessibleSelection interface on behalf of itself.
	*
	* @return this object
	*/
	@:overload override public function getAccessibleSelection() : javax.accessibility.AccessibleSelection;
	
	/**
	* Gets the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	* @see AccessibleRole
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Returns the <code>Accessible</code> child, if one exists,
	* contained at the local coordinate <code>Point</code>.
	*
	* @param p the point defining the top-left corner of the
	*    <code>Accessible</code>, given in the coordinate space
	*    of the object's parent
	* @return the <code>Accessible</code>, if it exists,
	*    at the specified location; else <code>null</code>
	*/
	@:overload override public function getAccessibleAt(p : java.awt.Point) : javax.accessibility.Accessible;
	
	/**
	* Returns the number of accessible children in the object.  If all
	* of the children of this object implement <code>Accessible</code>,
	* then this method should return the number of children of this object.
	*
	* @return the number of accessible children in the object
	*/
	@:overload override public function getAccessibleChildrenCount() : Int;
	
	/**
	* Returns the nth <code>Accessible</code> child of the object.
	*
	* @param i zero-based index of child
	* @return the nth Accessible child of the object
	*/
	@:overload override public function getAccessibleChild(i : Int) : javax.accessibility.Accessible;
	
	/**
	* Returns the number of <code>Accessible</code> children
	* currently selected.
	* If no children are selected, the return value will be 0.
	*
	* @return the number of items currently selected
	*/
	@:overload public function getAccessibleSelectionCount() : Int;
	
	/**
	* Returns an <code>Accessible</code> representing the
	* specified selected child in the object.  If there
	* isn't a selection, or there are fewer children selected
	* than the integer passed in, the return
	* value will be <code>null</code>.
	* <p>Note that the index represents the i-th selected child, which
	* is different from the i-th child.
	*
	* @param i the zero-based index of selected children
	* @return the i-th selected child
	* @see #getAccessibleSelectionCount
	*/
	@:overload public function getAccessibleSelection(i : Int) : javax.accessibility.Accessible;
	
	/**
	* Determines if the current child of this object is selected.
	*
	* @param i the zero-based index of the child in this
	*    <code>Accessible</code> object
	* @return true if the current child of this object is selected
	* @see AccessibleContext#getAccessibleChild
	*/
	@:overload public function isAccessibleChildSelected(i : Int) : Bool;
	
	/**
	* Adds the specified <code>Accessible</code> child of the
	* object to the object's selection.  If the object supports
	* multiple selections, the specified child is added to
	* any existing selection, otherwise
	* it replaces any existing selection in the object.  If the
	* specified child is already selected, this method has no effect.
	* <p>
	* This method only works on <code>JTable</code>s which have
	* individual cell selection enabled.
	*
	* @param i the zero-based index of the child
	* @see AccessibleContext#getAccessibleChild
	*/
	@:overload public function addAccessibleSelection(i : Int) : Void;
	
	/**
	* Removes the specified child of the object from the object's
	* selection.  If the specified item isn't currently selected, this
	* method has no effect.
	* <p>
	* This method only works on <code>JTables</code> which have
	* individual cell selection enabled.
	*
	* @param i the zero-based index of the child
	* @see AccessibleContext#getAccessibleChild
	*/
	@:overload public function removeAccessibleSelection(i : Int) : Void;
	
	/**
	* Clears the selection in the object, so that no children in the
	* object are selected.
	*/
	@:overload public function clearAccessibleSelection() : Void;
	
	/**
	* Causes every child of the object to be selected, but only
	* if the <code>JTable</code> supports multiple selections,
	* and if individual cell selection is enabled.
	*/
	@:overload public function selectAllAccessibleSelection() : Void;
	
	/**
	* Returns the row number of an index in the table.
	*
	* @param index the zero-based index in the table
	* @return the zero-based row of the table if one exists;
	* otherwise -1.
	* @since 1.4
	*/
	@:require(java4) @:overload public function getAccessibleRow(index : Int) : Int;
	
	/**
	* Returns the column number of an index in the table.
	*
	* @param index the zero-based index in the table
	* @return the zero-based column of the table if one exists;
	* otherwise -1.
	* @since 1.4
	*/
	@:require(java4) @:overload public function getAccessibleColumn(index : Int) : Int;
	
	/**
	* Returns the index at a row and column in the table.
	*
	* @param r zero-based row of the table
	* @param c zero-based column of the table
	* @return the zero-based index in the table if one exists;
	* otherwise -1.
	* @since 1.4
	*/
	@:require(java4) @:overload public function getAccessibleIndex(r : Int, c : Int) : Int;
	
	/**
	* Gets the <code>AccessibleTable</code> associated with this
	* object.  In the implementation of the Java Accessibility
	* API for this class, return this object, which is responsible
	* for implementing the <code>AccessibleTables</code> interface
	* on behalf of itself.
	*
	* @return this object
	* @since 1.3
	*/
	@:require(java3) @:overload override public function getAccessibleTable() : javax.accessibility.AccessibleTable;
	
	/**
	* Returns the caption for the table.
	*
	* @return the caption for the table
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAccessibleCaption() : javax.accessibility.Accessible;
	
	/**
	* Sets the caption for the table.
	*
	* @param a the caption for the table
	* @since 1.3
	*/
	@:require(java3) @:overload public function setAccessibleCaption(a : javax.accessibility.Accessible) : Void;
	
	/**
	* Returns the summary description of the table.
	*
	* @return the summary description of the table
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAccessibleSummary() : javax.accessibility.Accessible;
	
	/**
	* Sets the summary description of the table.
	*
	* @param a the summary description of the table
	* @since 1.3
	*/
	@:require(java3) @:overload public function setAccessibleSummary(a : javax.accessibility.Accessible) : Void;
	
	/*
	* Returns the total number of rows in this table.
	*
	* @return the total number of rows in this table
	*/
	@:overload public function getAccessibleRowCount() : Int;
	
	/*
	* Returns the total number of columns in the table.
	*
	* @return the total number of columns in the table
	*/
	@:overload public function getAccessibleColumnCount() : Int;
	
	/*
	* Returns the <code>Accessible</code> at a specified row
	* and column in the table.
	*
	* @param r zero-based row of the table
	* @param c zero-based column of the table
	* @return the <code>Accessible</code> at the specified row and column
	* in the table
	*/
	@:overload public function getAccessibleAt(r : Int, c : Int) : javax.accessibility.Accessible;
	
	/**
	* Returns the number of rows occupied by the <code>Accessible</code>
	* at a specified row and column in the table.
	*
	* @return the number of rows occupied by the <code>Accessible</code>
	*     at a specified row and column in the table
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAccessibleRowExtentAt(r : Int, c : Int) : Int;
	
	/**
	* Returns the number of columns occupied by the
	* <code>Accessible</code> at a given (row, column).
	*
	* @return the number of columns occupied by the <code>Accessible</code>
	*     at a specified row and column in the table
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAccessibleColumnExtentAt(r : Int, c : Int) : Int;
	
	/**
	* Returns the row headers as an <code>AccessibleTable</code>.
	*
	* @return an <code>AccessibleTable</code> representing the row
	* headers
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAccessibleRowHeader() : javax.accessibility.AccessibleTable;
	
	/**
	* Sets the row headers as an <code>AccessibleTable</code>.
	*
	* @param a an <code>AccessibleTable</code> representing the row
	*  headers
	* @since 1.3
	*/
	@:require(java3) @:overload public function setAccessibleRowHeader(a : javax.accessibility.AccessibleTable) : Void;
	
	/**
	* Returns the column headers as an <code>AccessibleTable</code>.
	*
	*  @return an <code>AccessibleTable</code> representing the column
	*          headers, or <code>null</code> if the table header is
	*          <code>null</code>
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAccessibleColumnHeader() : javax.accessibility.AccessibleTable;
	
	/**
	* Sets the column headers as an <code>AccessibleTable</code>.
	*
	* @param a an <code>AccessibleTable</code> representing the
	* column headers
	* @since 1.3
	*/
	@:require(java3) @:overload public function setAccessibleColumnHeader(a : javax.accessibility.AccessibleTable) : Void;
	
	/**
	* Returns the description of the specified row in the table.
	*
	* @param r zero-based row of the table
	* @return the description of the row
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAccessibleRowDescription(r : Int) : javax.accessibility.Accessible;
	
	/**
	* Sets the description text of the specified row of the table.
	*
	* @param r zero-based row of the table
	* @param a the description of the row
	* @since 1.3
	*/
	@:require(java3) @:overload public function setAccessibleRowDescription(r : Int, a : javax.accessibility.Accessible) : Void;
	
	/**
	* Returns the description of the specified column in the table.
	*
	* @param c zero-based column of the table
	* @return the description of the column
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAccessibleColumnDescription(c : Int) : javax.accessibility.Accessible;
	
	/**
	* Sets the description text of the specified column of the table.
	*
	* @param c zero-based column of the table
	* @param a the description of the column
	* @since 1.3
	*/
	@:require(java3) @:overload public function setAccessibleColumnDescription(c : Int, a : javax.accessibility.Accessible) : Void;
	
	/**
	* Returns a boolean value indicating whether the accessible at a
	* given (row, column) is selected.
	*
	* @param r zero-based row of the table
	* @param c zero-based column of the table
	* @return the boolean value true if the accessible at (row, column)
	*     is selected; otherwise, the boolean value false
	* @since 1.3
	*/
	@:require(java3) @:overload public function isAccessibleSelected(r : Int, c : Int) : Bool;
	
	/**
	* Returns a boolean value indicating whether the specified row
	* is selected.
	*
	* @param r zero-based row of the table
	* @return the boolean value true if the specified row is selected;
	*     otherwise, false
	* @since 1.3
	*/
	@:require(java3) @:overload public function isAccessibleRowSelected(r : Int) : Bool;
	
	/**
	* Returns a boolean value indicating whether the specified column
	* is selected.
	*
	* @param c zero-based column of the table
	* @return the boolean value true if the specified column is selected;
	*     otherwise, false
	* @since 1.3
	*/
	@:require(java3) @:overload public function isAccessibleColumnSelected(c : Int) : Bool;
	
	/**
	* Returns the selected rows in a table.
	*
	* @return an array of selected rows where each element is a
	*     zero-based row of the table
	* @since 1.3
	*/
	@:require(java3) @:overload public function getSelectedAccessibleRows() : java.NativeArray<Int>;
	
	/**
	* Returns the selected columns in a table.
	*
	* @return an array of selected columns where each element is a
	*     zero-based column of the table
	* @since 1.3
	*/
	@:require(java3) @:overload public function getSelectedAccessibleColumns() : java.NativeArray<Int>;
	
	/**
	* Returns the row at a given index into the table.
	*
	* @param i zero-based index into the table
	* @return the row at a given index
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAccessibleRowAtIndex(i : Int) : Int;
	
	/**
	* Returns the column at a given index into the table.
	*
	* @param i zero-based index into the table
	* @return the column at a given index
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAccessibleColumnAtIndex(i : Int) : Int;
	
	/**
	* Returns the index at a given (row, column) in the table.
	*
	* @param r zero-based row of the table
	* @param c zero-based column of the table
	* @return the index into the table
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAccessibleIndexAt(r : Int, c : Int) : Int;
	
	
}
/*
* Describes a change in the accessible table model.
*/
@:native('javax$swing$JTable$AccessibleJTable$AccessibleJTableModelChange') extern class JTable_AccessibleJTable_AccessibleJTableModelChange implements javax.accessibility.AccessibleTableModelChange
{
	private var type : Int;
	
	private var firstRow : Int;
	
	private var lastRow : Int;
	
	private var firstColumn : Int;
	
	private var lastColumn : Int;
	
	@:overload private function new(type : Int, firstRow : Int, lastRow : Int, firstColumn : Int, lastColumn : Int) : Void;
	
	@:overload public function getType() : Int;
	
	@:overload public function getFirstRow() : Int;
	
	@:overload public function getLastRow() : Int;
	
	@:overload public function getFirstColumn() : Int;
	
	@:overload public function getLastColumn() : Int;
	
	
}
/*
* Private class representing a table column header
*/
@:native('javax$swing$JTable$AccessibleJTable$AccessibleTableHeader') @:internal extern class JTable_AccessibleJTable_AccessibleTableHeader implements javax.accessibility.AccessibleTable
{
	/**
	* Returns the caption for the table.
	*
	* @return the caption for the table
	*/
	@:overload public function getAccessibleCaption() : javax.accessibility.Accessible;
	
	/**
	* Sets the caption for the table.
	*
	* @param a the caption for the table
	*/
	@:overload public function setAccessibleCaption(a : javax.accessibility.Accessible) : Void;
	
	/**
	* Returns the summary description of the table.
	*
	* @return the summary description of the table
	*/
	@:overload public function getAccessibleSummary() : javax.accessibility.Accessible;
	
	/**
	* Sets the summary description of the table
	*
	* @param a the summary description of the table
	*/
	@:overload public function setAccessibleSummary(a : javax.accessibility.Accessible) : Void;
	
	/**
	* Returns the number of rows in the table.
	*
	* @return the number of rows in the table
	*/
	@:overload public function getAccessibleRowCount() : Int;
	
	/**
	* Returns the number of columns in the table.
	*
	* @return the number of columns in the table
	*/
	@:overload public function getAccessibleColumnCount() : Int;
	
	/**
	* Returns the Accessible at a specified row and column
	* in the table.
	*
	* @param row zero-based row of the table
	* @param column zero-based column of the table
	* @return the Accessible at the specified row and column
	*/
	@:overload public function getAccessibleAt(row : Int, column : Int) : javax.accessibility.Accessible;
	
	/**
	* Returns the number of rows occupied by the Accessible at
	* a specified row and column in the table.
	*
	* @return the number of rows occupied by the Accessible at a
	* given specified (row, column)
	*/
	@:overload public function getAccessibleRowExtentAt(r : Int, c : Int) : Int;
	
	/**
	* Returns the number of columns occupied by the Accessible at
	* a specified row and column in the table.
	*
	* @return the number of columns occupied by the Accessible at a
	* given specified row and column
	*/
	@:overload public function getAccessibleColumnExtentAt(r : Int, c : Int) : Int;
	
	/**
	* Returns the row headers as an AccessibleTable.
	*
	* @return an AccessibleTable representing the row
	* headers
	*/
	@:overload public function getAccessibleRowHeader() : javax.accessibility.AccessibleTable;
	
	/**
	* Sets the row headers.
	*
	* @param table an AccessibleTable representing the
	* row headers
	*/
	@:overload public function setAccessibleRowHeader(table : javax.accessibility.AccessibleTable) : Void;
	
	/**
	* Returns the column headers as an AccessibleTable.
	*
	* @return an AccessibleTable representing the column
	* headers
	*/
	@:overload public function getAccessibleColumnHeader() : javax.accessibility.AccessibleTable;
	
	/**
	* Sets the column headers.
	*
	* @param table an AccessibleTable representing the
	* column headers
	* @since 1.3
	*/
	@:require(java3) @:overload public function setAccessibleColumnHeader(table : javax.accessibility.AccessibleTable) : Void;
	
	/**
	* Returns the description of the specified row in the table.
	*
	* @param r zero-based row of the table
	* @return the description of the row
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAccessibleRowDescription(r : Int) : javax.accessibility.Accessible;
	
	/**
	* Sets the description text of the specified row of the table.
	*
	* @param r zero-based row of the table
	* @param a the description of the row
	* @since 1.3
	*/
	@:require(java3) @:overload public function setAccessibleRowDescription(r : Int, a : javax.accessibility.Accessible) : Void;
	
	/**
	* Returns the description text of the specified column in the table.
	*
	* @param c zero-based column of the table
	* @return the text description of the column
	* @since 1.3
	*/
	@:require(java3) @:overload public function getAccessibleColumnDescription(c : Int) : javax.accessibility.Accessible;
	
	/**
	* Sets the description text of the specified column in the table.
	*
	* @param c zero-based column of the table
	* @param a the text description of the column
	* @since 1.3
	*/
	@:require(java3) @:overload public function setAccessibleColumnDescription(c : Int, a : javax.accessibility.Accessible) : Void;
	
	/**
	* Returns a boolean value indicating whether the accessible at
	* a specified row and column is selected.
	*
	* @param r zero-based row of the table
	* @param c zero-based column of the table
	* @return the boolean value true if the accessible at the
	* row and column is selected. Otherwise, the boolean value
	* false
	* @since 1.3
	*/
	@:require(java3) @:overload public function isAccessibleSelected(r : Int, c : Int) : Bool;
	
	/**
	* Returns a boolean value indicating whether the specified row
	* is selected.
	*
	* @param r zero-based row of the table
	* @return the boolean value true if the specified row is selected.
	* Otherwise, false.
	* @since 1.3
	*/
	@:require(java3) @:overload public function isAccessibleRowSelected(r : Int) : Bool;
	
	/**
	* Returns a boolean value indicating whether the specified column
	* is selected.
	*
	* @param r zero-based column of the table
	* @return the boolean value true if the specified column is selected.
	* Otherwise, false.
	* @since 1.3
	*/
	@:require(java3) @:overload public function isAccessibleColumnSelected(c : Int) : Bool;
	
	/**
	* Returns the selected rows in a table.
	*
	* @return an array of selected rows where each element is a
	* zero-based row of the table
	* @since 1.3
	*/
	@:require(java3) @:overload public function getSelectedAccessibleRows() : java.NativeArray<Int>;
	
	/**
	* Returns the selected columns in a table.
	*
	* @return an array of selected columns where each element is a
	* zero-based column of the table
	* @since 1.3
	*/
	@:require(java3) @:overload public function getSelectedAccessibleColumns() : java.NativeArray<Int>;
	
	
}
/**
* The class provides an implementation of the Java Accessibility
* API appropriate to table cells.
*/
@:native('javax$swing$JTable$AccessibleJTable$AccessibleJTableCell') extern class JTable_AccessibleJTable_AccessibleJTableCell extends javax.accessibility.AccessibleContext implements javax.accessibility.Accessible implements javax.accessibility.AccessibleComponent
{
	/**
	*  Constructs an <code>AccessibleJTableHeaderEntry</code>.
	* @since 1.4
	*/
	@:require(java4) @:overload public function new(t : javax.swing.JTable, r : Int, c : Int, i : Int) : Void;
	
	/**
	* Gets the <code>AccessibleContext</code> associated with this
	* component. In the implementation of the Java Accessibility
	* API for this class, return this object, which is its own
	* <code>AccessibleContext</code>.
	*
	* @return this object
	*/
	@:overload public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	/**
	* Gets the AccessibleContext for the table cell renderer.
	*
	* @return the <code>AccessibleContext</code> for the table
	* cell renderer if one exists;
	* otherwise, returns <code>null</code>.
	* @since 1.6
	*/
	@:require(java6) @:overload private function getCurrentAccessibleContext() : javax.accessibility.AccessibleContext;
	
	/**
	* Gets the table cell renderer component.
	*
	* @return the table cell renderer component if one exists;
	* otherwise, returns <code>null</code>.
	* @since 1.6
	*/
	@:require(java6) @:overload private function getCurrentComponent() : java.awt.Component;
	
	/**
	* Gets the accessible name of this object.
	*
	* @return the localized name of the object; <code>null</code>
	*     if this object does not have a name
	*/
	@:overload override public function getAccessibleName() : String;
	
	/**
	* Sets the localized accessible name of this object.
	*
	* @param s the new localized name of the object
	*/
	@:overload override public function setAccessibleName(s : String) : Void;
	
	/**
	* Gets the accessible description of this object.
	*
	* @return the localized description of the object;
	*     <code>null</code> if this object does not have
	*     a description
	*/
	@:overload override public function getAccessibleDescription() : String;
	
	/**
	* Sets the accessible description of this object.
	*
	* @param s the new localized description of the object
	*/
	@:overload override public function setAccessibleDescription(s : String) : Void;
	
	/**
	* Gets the role of this object.
	*
	* @return an instance of <code>AccessibleRole</code>
	*      describing the role of the object
	* @see AccessibleRole
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Gets the state set of this object.
	*
	* @return an instance of <code>AccessibleStateSet</code>
	*     containing the current state set of the object
	* @see AccessibleState
	*/
	@:overload override public function getAccessibleStateSet() : javax.accessibility.AccessibleStateSet;
	
	/**
	* Gets the <code>Accessible</code> parent of this object.
	*
	* @return the Accessible parent of this object;
	*     <code>null</code> if this object does not
	*     have an <code>Accessible</code> parent
	*/
	@:overload override public function getAccessibleParent() : javax.accessibility.Accessible;
	
	/**
	* Gets the index of this object in its accessible parent.
	*
	* @return the index of this object in its parent; -1 if this
	*     object does not have an accessible parent
	* @see #getAccessibleParent
	*/
	@:overload override public function getAccessibleIndexInParent() : Int;
	
	/**
	* Returns the number of accessible children in the object.
	*
	* @return the number of accessible children in the object
	*/
	@:overload override public function getAccessibleChildrenCount() : Int;
	
	/**
	* Returns the specified <code>Accessible</code> child of the
	* object.
	*
	* @param i zero-based index of child
	* @return the <code>Accessible</code> child of the object
	*/
	@:overload override public function getAccessibleChild(i : Int) : javax.accessibility.Accessible;
	
	/**
	* Gets the locale of the component. If the component
	* does not have a locale, then the locale of its parent
	* is returned.
	*
	* @return this component's locale; if this component does
	*    not have a locale, the locale of its parent is returned
	* @exception IllegalComponentStateException if the
	*    <code>Component</code> does not have its own locale
	*    and has not yet been added to a containment hierarchy
	*    such that the locale can be determined from the
	*    containing parent
	* @see #setLocale
	*/
	@:overload override public function getLocale() : java.util.Locale;
	
	/**
	* Adds a <code>PropertyChangeListener</code> to the listener list.
	* The listener is registered for all properties.
	*
	* @param l  the <code>PropertyChangeListener</code>
	*     to be added
	*/
	@:overload override public function addPropertyChangeListener(l : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Removes a <code>PropertyChangeListener</code> from the
	* listener list. This removes a <code>PropertyChangeListener</code>
	* that was registered for all properties.
	*
	* @param l  the <code>PropertyChangeListener</code>
	*    to be removed
	*/
	@:overload override public function removePropertyChangeListener(l : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Gets the <code>AccessibleAction</code> associated with this
	* object if one exists.  Otherwise returns <code>null</code>.
	*
	* @return the <code>AccessibleAction</code>, or <code>null</code>
	*/
	@:overload override public function getAccessibleAction() : javax.accessibility.AccessibleAction;
	
	/**
	* Gets the <code>AccessibleComponent</code> associated with
	* this object if one exists.  Otherwise returns <code>null</code>.
	*
	* @return the <code>AccessibleComponent</code>, or
	*    <code>null</code>
	*/
	@:overload override public function getAccessibleComponent() : javax.accessibility.AccessibleComponent;
	
	/**
	* Gets the <code>AccessibleSelection</code> associated with
	* this object if one exists.  Otherwise returns <code>null</code>.
	*
	* @return the <code>AccessibleSelection</code>, or
	*    <code>null</code>
	*/
	@:overload override public function getAccessibleSelection() : javax.accessibility.AccessibleSelection;
	
	/**
	* Gets the <code>AccessibleText</code> associated with this
	* object if one exists.  Otherwise returns <code>null</code>.
	*
	* @return the <code>AccessibleText</code>, or <code>null</code>
	*/
	@:overload override public function getAccessibleText() : javax.accessibility.AccessibleText;
	
	/**
	* Gets the <code>AccessibleValue</code> associated with
	* this object if one exists.  Otherwise returns <code>null</code>.
	*
	* @return the <code>AccessibleValue</code>, or <code>null</code>
	*/
	@:overload override public function getAccessibleValue() : javax.accessibility.AccessibleValue;
	
	/**
	* Gets the background color of this object.
	*
	* @return the background color, if supported, of the object;
	*     otherwise, <code>null</code>
	*/
	@:overload public function getBackground() : java.awt.Color;
	
	/**
	* Sets the background color of this object.
	*
	* @param c the new <code>Color</code> for the background
	*/
	@:overload public function setBackground(c : java.awt.Color) : Void;
	
	/**
	* Gets the foreground color of this object.
	*
	* @return the foreground color, if supported, of the object;
	*     otherwise, <code>null</code>
	*/
	@:overload public function getForeground() : java.awt.Color;
	
	/**
	* Sets the foreground color of this object.
	*
	* @param c the new <code>Color</code> for the foreground
	*/
	@:overload public function setForeground(c : java.awt.Color) : Void;
	
	/**
	* Gets the <code>Cursor</code> of this object.
	*
	* @return the <code>Cursor</code>, if supported,
	*    of the object; otherwise, <code>null</code>
	*/
	@:overload public function getCursor() : java.awt.Cursor;
	
	/**
	* Sets the <code>Cursor</code> of this object.
	*
	* @param c the new <code>Cursor</code> for the object
	*/
	@:overload public function setCursor(c : java.awt.Cursor) : Void;
	
	/**
	* Gets the <code>Font</code> of this object.
	*
	* @return the <code>Font</code>,if supported,
	*   for the object; otherwise, <code>null</code>
	*/
	@:overload public function getFont() : java.awt.Font;
	
	/**
	* Sets the <code>Font</code> of this object.
	*
	* @param f the new <code>Font</code> for the object
	*/
	@:overload public function setFont(f : java.awt.Font) : Void;
	
	/**
	* Gets the <code>FontMetrics</code> of this object.
	*
	* @param f the <code>Font</code>
	* @return the <code>FontMetrics</code> object, if supported;
	*    otherwise <code>null</code>
	* @see #getFont
	*/
	@:overload public function getFontMetrics(f : java.awt.Font) : java.awt.FontMetrics;
	
	/**
	* Determines if the object is enabled.
	*
	* @return true if object is enabled; otherwise, false
	*/
	@:overload public function isEnabled() : Bool;
	
	/**
	* Sets the enabled state of the object.
	*
	* @param b if true, enables this object; otherwise, disables it
	*/
	@:overload public function setEnabled(b : Bool) : Void;
	
	/**
	* Determines if this object is visible.  Note: this means that the
	* object intends to be visible; however, it may not in fact be
	* showing on the screen because one of the objects that this object
	* is contained by is not visible.  To determine if an object is
	* showing on the screen, use <code>isShowing</code>.
	*
	* @return true if object is visible; otherwise, false
	*/
	@:overload public function isVisible() : Bool;
	
	/**
	* Sets the visible state of the object.
	*
	* @param b if true, shows this object; otherwise, hides it
	*/
	@:overload public function setVisible(b : Bool) : Void;
	
	/**
	* Determines if the object is showing.  This is determined
	* by checking the visibility of the object and ancestors
	* of the object.  Note: this will return true even if the
	* object is obscured by another (for example,
	* it happens to be underneath a menu that was pulled down).
	*
	* @return true if the object is showing; otherwise, false
	*/
	@:overload public function isShowing() : Bool;
	
	/**
	* Checks whether the specified point is within this
	* object's bounds, where the point's x and y coordinates
	* are defined to be relative to the coordinate system of
	* the object.
	*
	* @param p the <code>Point</code> relative to the
	*    coordinate system of the object
	* @return true if object contains <code>Point</code>;
	*    otherwise false
	*/
	@:overload public function contains(p : java.awt.Point) : Bool;
	
	/**
	* Returns the location of the object on the screen.
	*
	* @return location of object on screen -- can be
	*    <code>null</code> if this object is not on the screen
	*/
	@:overload public function getLocationOnScreen() : java.awt.Point;
	
	/**
	* Gets the location of the object relative to the parent
	* in the form of a point specifying the object's
	* top-left corner in the screen's coordinate space.
	*
	* @return an instance of <code>Point</code> representing
	*    the top-left corner of the object's bounds in the
	*    coordinate space of the screen; <code>null</code> if
	*    this object or its parent are not on the screen
	*/
	@:overload public function getLocation() : java.awt.Point;
	
	/**
	* Sets the location of the object relative to the parent.
	*/
	@:overload public function setLocation(p : java.awt.Point) : Void;
	
	@:overload public function getBounds() : java.awt.Rectangle;
	
	@:overload public function setBounds(r : java.awt.Rectangle) : Void;
	
	@:overload public function getSize() : java.awt.Dimension;
	
	@:overload public function setSize(d : java.awt.Dimension) : Void;
	
	@:overload public function getAccessibleAt(p : java.awt.Point) : javax.accessibility.Accessible;
	
	@:overload public function isFocusTraversable() : Bool;
	
	@:overload public function requestFocus() : Void;
	
	@:overload public function addFocusListener(l : java.awt.event.FocusListener) : Void;
	
	@:overload public function removeFocusListener(l : java.awt.event.FocusListener) : Void;
	
	
}
/**
* This class implements accessibility for JTable header cells.
*/
@:native('javax$swing$JTable$AccessibleJTable$AccessibleJTableHeaderCell') @:internal extern class JTable_AccessibleJTable_AccessibleJTableHeaderCell extends javax.accessibility.AccessibleContext implements javax.accessibility.Accessible implements javax.accessibility.AccessibleComponent
{
	/**
	* Constructs an <code>AccessibleJTableHeaderEntry</code> instance.
	*
	* @param row header cell row index
	* @param column header cell column index
	* @param parent header cell parent
	* @param rendererComponent component that renders the header cell
	*/
	@:overload public function new(row : Int, column : Int, parent : javax.swing.table.JTableHeader, rendererComponent : java.awt.Component) : Void;
	
	/**
	* Gets the <code>AccessibleContext</code> associated with this
	* component. In the implementation of the Java Accessibility
	* API for this class, return this object, which is its own
	* <code>AccessibleContext</code>.
	*
	* @return this object
	*/
	@:overload public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	/**
	* Gets the accessible name of this object.
	*
	* @return the localized name of the object; <code>null</code>
	*     if this object does not have a name
	*/
	@:overload override public function getAccessibleName() : String;
	
	/**
	* Sets the localized accessible name of this object.
	*
	* @param s the new localized name of the object
	*/
	@:overload override public function setAccessibleName(s : String) : Void;
	
	/**
	* Gets the accessible description of this object.
	*
	* @return the localized description of the object;
	*     <code>null</code> if this object does not have
	*     a description
	*/
	@:overload override public function getAccessibleDescription() : String;
	
	/**
	* Sets the accessible description of this object.
	*
	* @param s the new localized description of the object
	*/
	@:overload override public function setAccessibleDescription(s : String) : Void;
	
	/**
	* Gets the role of this object.
	*
	* @return an instance of <code>AccessibleRole</code>
	*      describing the role of the object
	* @see AccessibleRole
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Gets the state set of this object.
	*
	* @return an instance of <code>AccessibleStateSet</code>
	*     containing the current state set of the object
	* @see AccessibleState
	*/
	@:overload override public function getAccessibleStateSet() : javax.accessibility.AccessibleStateSet;
	
	/**
	* Gets the <code>Accessible</code> parent of this object.
	*
	* @return the Accessible parent of this object;
	*     <code>null</code> if this object does not
	*     have an <code>Accessible</code> parent
	*/
	@:overload override public function getAccessibleParent() : javax.accessibility.Accessible;
	
	/**
	* Gets the index of this object in its accessible parent.
	*
	* @return the index of this object in its parent; -1 if this
	*     object does not have an accessible parent
	* @see #getAccessibleParent
	*/
	@:overload override public function getAccessibleIndexInParent() : Int;
	
	/**
	* Returns the number of accessible children in the object.
	*
	* @return the number of accessible children in the object
	*/
	@:overload override public function getAccessibleChildrenCount() : Int;
	
	/**
	* Returns the specified <code>Accessible</code> child of the
	* object.
	*
	* @param i zero-based index of child
	* @return the <code>Accessible</code> child of the object
	*/
	@:overload override public function getAccessibleChild(i : Int) : javax.accessibility.Accessible;
	
	/**
	* Gets the locale of the component. If the component
	* does not have a locale, then the locale of its parent
	* is returned.
	*
	* @return this component's locale; if this component does
	*    not have a locale, the locale of its parent is returned
	* @exception IllegalComponentStateException if the
	*    <code>Component</code> does not have its own locale
	*    and has not yet been added to a containment hierarchy
	*    such that the locale can be determined from the
	*    containing parent
	* @see #setLocale
	*/
	@:overload override public function getLocale() : java.util.Locale;
	
	/**
	* Adds a <code>PropertyChangeListener</code> to the listener list.
	* The listener is registered for all properties.
	*
	* @param l  the <code>PropertyChangeListener</code>
	*     to be added
	*/
	@:overload override public function addPropertyChangeListener(l : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Removes a <code>PropertyChangeListener</code> from the
	* listener list. This removes a <code>PropertyChangeListener</code>
	* that was registered for all properties.
	*
	* @param l  the <code>PropertyChangeListener</code>
	*    to be removed
	*/
	@:overload override public function removePropertyChangeListener(l : java.beans.PropertyChangeListener) : Void;
	
	/**
	* Gets the <code>AccessibleAction</code> associated with this
	* object if one exists.  Otherwise returns <code>null</code>.
	*
	* @return the <code>AccessibleAction</code>, or <code>null</code>
	*/
	@:overload override public function getAccessibleAction() : javax.accessibility.AccessibleAction;
	
	/**
	* Gets the <code>AccessibleComponent</code> associated with
	* this object if one exists.  Otherwise returns <code>null</code>.
	*
	* @return the <code>AccessibleComponent</code>, or
	*    <code>null</code>
	*/
	@:overload override public function getAccessibleComponent() : javax.accessibility.AccessibleComponent;
	
	/**
	* Gets the <code>AccessibleSelection</code> associated with
	* this object if one exists.  Otherwise returns <code>null</code>.
	*
	* @return the <code>AccessibleSelection</code>, or
	*    <code>null</code>
	*/
	@:overload override public function getAccessibleSelection() : javax.accessibility.AccessibleSelection;
	
	/**
	* Gets the <code>AccessibleText</code> associated with this
	* object if one exists.  Otherwise returns <code>null</code>.
	*
	* @return the <code>AccessibleText</code>, or <code>null</code>
	*/
	@:overload override public function getAccessibleText() : javax.accessibility.AccessibleText;
	
	/**
	* Gets the <code>AccessibleValue</code> associated with
	* this object if one exists.  Otherwise returns <code>null</code>.
	*
	* @return the <code>AccessibleValue</code>, or <code>null</code>
	*/
	@:overload override public function getAccessibleValue() : javax.accessibility.AccessibleValue;
	
	/**
	* Gets the background color of this object.
	*
	* @return the background color, if supported, of the object;
	*     otherwise, <code>null</code>
	*/
	@:overload public function getBackground() : java.awt.Color;
	
	/**
	* Sets the background color of this object.
	*
	* @param c the new <code>Color</code> for the background
	*/
	@:overload public function setBackground(c : java.awt.Color) : Void;
	
	/**
	* Gets the foreground color of this object.
	*
	* @return the foreground color, if supported, of the object;
	*     otherwise, <code>null</code>
	*/
	@:overload public function getForeground() : java.awt.Color;
	
	/**
	* Sets the foreground color of this object.
	*
	* @param c the new <code>Color</code> for the foreground
	*/
	@:overload public function setForeground(c : java.awt.Color) : Void;
	
	/**
	* Gets the <code>Cursor</code> of this object.
	*
	* @return the <code>Cursor</code>, if supported,
	*    of the object; otherwise, <code>null</code>
	*/
	@:overload public function getCursor() : java.awt.Cursor;
	
	/**
	* Sets the <code>Cursor</code> of this object.
	*
	* @param c the new <code>Cursor</code> for the object
	*/
	@:overload public function setCursor(c : java.awt.Cursor) : Void;
	
	/**
	* Gets the <code>Font</code> of this object.
	*
	* @return the <code>Font</code>,if supported,
	*   for the object; otherwise, <code>null</code>
	*/
	@:overload public function getFont() : java.awt.Font;
	
	/**
	* Sets the <code>Font</code> of this object.
	*
	* @param f the new <code>Font</code> for the object
	*/
	@:overload public function setFont(f : java.awt.Font) : Void;
	
	/**
	* Gets the <code>FontMetrics</code> of this object.
	*
	* @param f the <code>Font</code>
	* @return the <code>FontMetrics</code> object, if supported;
	*    otherwise <code>null</code>
	* @see #getFont
	*/
	@:overload public function getFontMetrics(f : java.awt.Font) : java.awt.FontMetrics;
	
	/**
	* Determines if the object is enabled.
	*
	* @return true if object is enabled; otherwise, false
	*/
	@:overload public function isEnabled() : Bool;
	
	/**
	* Sets the enabled state of the object.
	*
	* @param b if true, enables this object; otherwise, disables it
	*/
	@:overload public function setEnabled(b : Bool) : Void;
	
	/**
	* Determines if this object is visible.  Note: this means that the
	* object intends to be visible; however, it may not in fact be
	* showing on the screen because one of the objects that this object
	* is contained by is not visible.  To determine if an object is
	* showing on the screen, use <code>isShowing</code>.
	*
	* @return true if object is visible; otherwise, false
	*/
	@:overload public function isVisible() : Bool;
	
	/**
	* Sets the visible state of the object.
	*
	* @param b if true, shows this object; otherwise, hides it
	*/
	@:overload public function setVisible(b : Bool) : Void;
	
	/**
	* Determines if the object is showing.  This is determined
	* by checking the visibility of the object and ancestors
	* of the object.  Note: this will return true even if the
	* object is obscured by another (for example,
	* it happens to be underneath a menu that was pulled down).
	*
	* @return true if the object is showing; otherwise, false
	*/
	@:overload public function isShowing() : Bool;
	
	/**
	* Checks whether the specified point is within this
	* object's bounds, where the point's x and y coordinates
	* are defined to be relative to the coordinate system of
	* the object.
	*
	* @param p the <code>Point</code> relative to the
	*    coordinate system of the object
	* @return true if object contains <code>Point</code>;
	*    otherwise false
	*/
	@:overload public function contains(p : java.awt.Point) : Bool;
	
	/**
	* Returns the location of the object on the screen.
	*
	* @return location of object on screen -- can be
	*    <code>null</code> if this object is not on the screen
	*/
	@:overload public function getLocationOnScreen() : java.awt.Point;
	
	/**
	* Gets the location of the object relative to the parent
	* in the form of a point specifying the object's
	* top-left corner in the screen's coordinate space.
	*
	* @return an instance of <code>Point</code> representing
	*    the top-left corner of the object's bounds in the
	*    coordinate space of the screen; <code>null</code> if
	*    this object or its parent are not on the screen
	*/
	@:overload public function getLocation() : java.awt.Point;
	
	/**
	* Sets the location of the object relative to the parent.
	* @param p the new position for the top-left corner
	* @see #getLocation
	*/
	@:overload public function setLocation(p : java.awt.Point) : Void;
	
	/**
	* Gets the bounds of this object in the form of a Rectangle object.
	* The bounds specify this object's width, height, and location
	* relative to its parent.
	*
	* @return A rectangle indicating this component's bounds; null if
	* this object is not on the screen.
	* @see #contains
	*/
	@:overload public function getBounds() : java.awt.Rectangle;
	
	/**
	* Sets the bounds of this object in the form of a Rectangle object.
	* The bounds specify this object's width, height, and location
	* relative to its parent.
	*
	* @param r rectangle indicating this component's bounds
	* @see #getBounds
	*/
	@:overload public function setBounds(r : java.awt.Rectangle) : Void;
	
	/**
	* Returns the size of this object in the form of a Dimension object.
	* The height field of the Dimension object contains this object's
	* height, and the width field of the Dimension object contains this
	* object's width.
	*
	* @return A Dimension object that indicates the size of this component;
	* null if this object is not on the screen
	* @see #setSize
	*/
	@:overload public function getSize() : java.awt.Dimension;
	
	/**
	* Resizes this object so that it has width and height.
	*
	* @param d The dimension specifying the new size of the object.
	* @see #getSize
	*/
	@:overload public function setSize(d : java.awt.Dimension) : Void;
	
	/**
	* Returns the Accessible child, if one exists, contained at the local
	* coordinate Point.
	*
	* @param p The point relative to the coordinate system of this object.
	* @return the Accessible, if it exists, at the specified location;
	* otherwise null
	*/
	@:overload public function getAccessibleAt(p : java.awt.Point) : javax.accessibility.Accessible;
	
	/**
	* Returns whether this object can accept focus or not.   Objects that
	* can accept focus will also have the AccessibleState.FOCUSABLE state
	* set in their AccessibleStateSets.
	*
	* @return true if object can accept focus; otherwise false
	* @see AccessibleContext#getAccessibleStateSet
	* @see AccessibleState#FOCUSABLE
	* @see AccessibleState#FOCUSED
	* @see AccessibleStateSet
	*/
	@:overload public function isFocusTraversable() : Bool;
	
	/**
	* Requests focus for this object.  If this object cannot accept focus,
	* nothing will happen.  Otherwise, the object will attempt to take
	* focus.
	* @see #isFocusTraversable
	*/
	@:overload public function requestFocus() : Void;
	
	/**
	* Adds the specified focus listener to receive focus events from this
	* component.
	*
	* @param l the focus listener
	* @see #removeFocusListener
	*/
	@:overload public function addFocusListener(l : java.awt.event.FocusListener) : Void;
	
	/**
	* Removes the specified focus listener so it no longer receives focus
	* events from this component.
	*
	* @param l the focus listener
	* @see #addFocusListener
	*/
	@:overload public function removeFocusListener(l : java.awt.event.FocusListener) : Void;
	
	
}
