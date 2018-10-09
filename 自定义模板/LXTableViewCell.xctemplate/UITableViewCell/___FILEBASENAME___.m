//___FILEHEADER___

#import "___FILEBASENAME___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()

@property (nonatomic, strong) UIImageView *imgView;
    
@property (nonatomic, strong) UILabel *title_lb;
    
@property (nonatomic, strong) UILabel *desc_lb;

@end

@implementation ___FILEBASENAMEASIDENTIFIER___

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        [self.contentView addSubview:self.imgView];
        [self.contentView addSubview:self.title_lb];
        [self.contentView addSubview:self.desc_lb];
    }
    return self;
}
    
- (UIImageView *)imgView {
    
    if (!_imgView) {
        
        _imgView = [[UIImageView alloc]initWithFrame:<#CGRect?#>];
    }
    return _imgView;
}
    
- (UILabel *)title_lb {
    
    if (!_title_lb) {
        
        _title_lb = [[UILabel alloc]initWithFrame:<#CGRect?#>];
        _title_lb.font = Font(14);
        _title_lb.textColor = Color333;
        _title_lb.textAlignment = NSTextAlignmentLeft;
        _title_lb.numberOfLines = 1;
    }
    return _title_lb;
}
    
- (UILabel *)desc_lb {
    
    if (!_desc_lb) {
        
        _desc_lb = [[UILabel alloc]initWithFrame:<#CGRect?#>];
        _desc_lb.font = Font(12);
        _desc_lb.textColor = Color666;
        _desc_lb.textAlignment = NSTextAlignmentLeft;
        _desc_lb.numberOfLines = 1;
    }
    return _desc_lb;
}
    
- (void)setModel:(<#modelClass#> *)model {
    _model = model;
    
}
    
@end
