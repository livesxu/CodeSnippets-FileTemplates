//___FILEHEADER___

#import "___FILEBASENAME___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) <#ViewModelClass#> *viewModel;

@property (nonatomic, strong) UITableView *listTable;

@end

@implementation ___FILEBASENAMEASIDENTIFIER___

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}

#pragma mark - 界面加载
- (void)staticViewsWithoutNib{
    
    [self.view addSubview:self.listTable];
}

/**
 加载数据
 */
- (void)loadData;{
    
    __weak typeof(self) weakSelf = self;
    [self.viewModel layoutRequestBackData:^(BOOL isSuccess) {
        
        if (isSuccess) {
            
        } else {
            
            
        }
    }];
}

#pragma mark - Change Values


#pragma mark - Delegate

#pragma mark - UITableViewDataSource/UITableViewDelegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return <#number#>;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return <#number#>;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    <#cellClass#> *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([<#cellClass#> class])];
    
    if (!cell) {
        
        cell = [[NSBundle mainBundle]loadNibNamed:NSStringFromClass([<#cellClass#> class]) owner:self options:nil].lastObject;
        //        cell = [[<#cellClass#> alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:NSStringFromClass([<#cellClass#> class])];
    }
    //赋值
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return <#cellHeight#>;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

#pragma mark - Lazy load

#pragma mark - lazy viewModel
- (<#ViewModelClass#> *)viewModel{
    if (!_viewModel) {
        _viewModel=[[<#ViewModelClass#> alloc]init];
    }
    return _viewModel;
}

#pragma mark - lazyTable
- (UITableView *)listTable{
    if (!_listTable) {
        _listTable=[[UITableView alloc]initWithFrame:<#tableFrame#> style:UITableViewStylePlain];
        
        _listTable.delegate = self;
        _listTable.dataSource = self;
        _listTable.showsHorizontalScrollIndicator = NO;
        _listTable.showsVerticalScrollIndicator  = NO;
        _listTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _listTable.backgroundColor=<#tableBgColor#>;
        
    }
    return _listTable;
}

@end
