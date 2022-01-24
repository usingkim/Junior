
public class Point3D extends Point{
	private double x, y, z;
	
	public Point3D(double x, double y, double z){
		super(x, y);
		this.x = x;
		this.y = y;
		this.z = z; 
	}
	
	public void setZ(double z) {
		this.z = z;
	}
	
	public double getZ() {
		return z;
	}
	
	public double distance(Point3D pt) {
		return Math.sqrt(Math.pow(pt.getX() - x, 2.0) + Math.pow(pt.getY() - y, 2.0) + Math.pow(pt.getZ() - z, 2.0));
	}
}
