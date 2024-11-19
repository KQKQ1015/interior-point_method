function setupProject()
% startup.m
% MATLAB起動時に実行されるスクリプト
% プロジェクト内のすべての関数をパスに追加する

% プロジェクトのルートディレクトリを指定
projectRoot = fileparts(mfilename('fullpath'));

% サブフォルダを再帰的に検索
addpath(genpath(projectRoot));

% 確認メッセージ
fprintf('プロジェクトフォルダ "%s" 内のすべての関数をパスに追加しました。\n', projectRoot);

end

