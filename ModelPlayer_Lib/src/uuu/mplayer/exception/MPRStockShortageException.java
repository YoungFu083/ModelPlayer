package uuu.mplayer.exception;

import uuu.mplayer.entity.OrderItem;

public class MPRStockShortageException extends MPRException {
	
	private final OrderItem item;
	private static final String msg = "庫存不足";
	
	public MPRStockShortageException() {
		super("庫存不足");
		item = null;
	}

	public MPRStockShortageException(OrderItem item) {
		super(msg);
		this.item = item;
	}

	public OrderItem getItem() {
		return item;
	}
	
	
}
