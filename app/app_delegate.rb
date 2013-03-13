class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    @window = createWindow
    @window.makeKeyAndVisible


    createBoxes
    #@window.addSubview(@box)

    true
  end


  def createWindow
    window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.applicationFrame)

    window.backgroundColor = UIColor.blackColor
    
    window
  end

  def createBoxes

    box = UIView.alloc.initWithFrame CGRect.new [10,10], [50, 50]
    box.backgroundColor = UIColor.send("#{randomColors.sample}Color")
    @window.addSubview(box)

    #@label = UILabel.alloc.initWithTitle

    randomColors.each do |color|
      lv = @window.subviews[0]
      rand_box = UIView.alloc.initWithFrame CGRect.new(
                                              [ lv.frame.origin.x, (lv.frame.origin.y + (lv.frame.size.height + 10))],
                                              lv.frame.size
                                            )
      rand_box.backgroundColor = UIColor.send("#{color}Color")
      @window.insertSubview rand_box, 
                            atIndex:0

    end

  end

  def randomColors
    %w|red blue green orange magenta|
  end
end
