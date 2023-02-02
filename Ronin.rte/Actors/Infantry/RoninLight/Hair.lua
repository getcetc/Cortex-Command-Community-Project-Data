function Update(self)
	local gravity = (self.Vel + self.PrevVel)/2 - SceneMan.GlobalAcc * rte.PxTravelledPerFrame;
	self.RotAngle = gravity.AbsRadAngle;
	self.Frame = gravity:MagnitudeIsGreaterThan(8) and 1 or 0;
end
